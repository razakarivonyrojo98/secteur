<?php

namespace App\Controller;

use App\Entity\SecteurValide;
use App\Form\SecteurValideType;
use App\Repository\SecteurValideRepository;
use Doctrine\ORM\EntityManagerInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

#[Route('/secteur/valide')]
final class SecteurValideController extends AbstractController
{
    #[Route(name: 'app_secteur_valide_index', methods: ['GET'])]
    public function index(SecteurValideRepository $secteurValideRepository): Response
    {
        return $this->render('secteur_valide/index.html.twig', [
            'secteur_valides' => $secteurValideRepository->findAll(),
        ]);
    }

    #[Route('/new', name: 'app_secteur_valide_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $secteurValide = new SecteurValide();
        $form = $this->createForm(SecteurValideType::class, $secteurValide);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($secteurValide);
            $entityManager->flush();

            return $this->redirectToRoute('app_secteur_valide_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('secteur_valide/new.html.twig', [
            'secteur_valide' => $secteurValide,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_secteur_valide_show', methods: ['GET'])]
    public function show(SecteurValide $secteurValide): Response
    {
        return $this->render('secteur_valide/show.html.twig', [
            'secteur_valide' => $secteurValide,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_secteur_valide_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, SecteurValide $secteurValide, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(SecteurValideType::class, $secteurValide);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_secteur_valide_index', [], Response::HTTP_SEE_OTHER);
        }

        return $this->render('secteur_valide/edit.html.twig', [
            'secteur_valide' => $secteurValide,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_secteur_valide_delete', methods: ['POST'])]
    public function delete(Request $request, SecteurValide $secteurValide, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete'.$secteurValide->getId(), $request->getPayload()->getString('_token'))) {
            $entityManager->remove($secteurValide);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_secteur_valide_index', [], Response::HTTP_SEE_OTHER);
    }
}
