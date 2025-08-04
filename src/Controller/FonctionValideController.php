<?php

namespace App\Controller;

use App\Entity\FonctionValide;
use App\Form\FonctionValideType;
use App\Repository\FonctionValideRepository;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\Routing\Attribute\Route;

#[Route('/fonction/valide')]
final class FonctionValideController extends AbstractController
{
    #[Route(name: 'app_fonction_valide_index', methods: ['GET'])]
    public function index(
    Request $request,
    PaginatorInterface $paginator,
    EntityManagerInterface $em
): Response {
    $query = $em->getRepository(FonctionValide::class)
        ->createQueryBuilder('f')
        ->orderBy('f.annee', 'DESC')
        ->getQuery();

    $pagination = $paginator->paginate(
        $query,
        $request->query->getInt('page', 1),
        10
    );

    return $this->render('fonction_valide/index.html.twig', [
        'fonction_valides' => $pagination,
    ]);
}

    #[Route('/new', name: 'app_fonction_valide_new', methods: ['GET', 'POST'])]
    public function new(Request $request, EntityManagerInterface $entityManager): Response
    {
        $fonctionValide = new FonctionValide();
        $form = $this->createForm(FonctionValideType::class, $fonctionValide);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->persist($fonctionValide);
            $entityManager->flush();

            return $this->redirectToRoute('app_fonction_valide_index');
        }

        return $this->render('fonction_valide/new.html.twig', [
            'fonction_valide' => $fonctionValide,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_fonction_valide_show', methods: ['GET'])]
    public function show(FonctionValide $fonctionValide): Response
    {
        return $this->render('fonction_valide/show.html.twig', [
            'fonction_valide' => $fonctionValide,
        ]);
    }

    #[Route('/{id}/edit', name: 'app_fonction_valide_edit', methods: ['GET', 'POST'])]
    public function edit(Request $request, FonctionValide $fonctionValide, EntityManagerInterface $entityManager): Response
    {
        $form = $this->createForm(FonctionValideType::class, $fonctionValide);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $entityManager->flush();

            return $this->redirectToRoute('app_fonction_valide_index');
        }

        return $this->render('fonction_valide/edit.html.twig', [
            'fonction_valide' => $fonctionValide,
            'form' => $form,
        ]);
    }

    #[Route('/{id}', name: 'app_fonction_valide_delete', methods: ['POST'])]
    public function delete(Request $request, FonctionValide $fonctionValide, EntityManagerInterface $entityManager): Response
    {
        if ($this->isCsrfTokenValid('delete' . $fonctionValide->getId(), $request->getPayload()->getString('_token'))) {
            $entityManager->remove($fonctionValide);
            $entityManager->flush();
        }

        return $this->redirectToRoute('app_fonction_valide_index');
    }
}
