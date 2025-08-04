<?php

namespace App\Entity;

use App\Repository\OrigineValideRepository;
use Doctrine\ORM\Mapping as ORM;

#[ORM\Entity(repositoryClass: OrigineValideRepository::class)]
class OrigineValide
{
    #[ORM\Id]
    #[ORM\GeneratedValue]
    #[ORM\Column]
    private ?int $id = null;

    #[ORM\Column(length: 10)]
    private ?string $annee = null;

    #[ORM\Column(length: 10)]
    private ?string $nummois = null;

    #[ORM\Column(length: 20)]
    private ?string $ensemble = null;

    #[ORM\Column(length: 30)]
    private ?string $prodlocal = null;

    #[ORM\Column(length: 30)]
    private ?string $prodsemimp = null;

    #[ORM\Column(length: 30)]
    private ?string $prodimport = null;

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getAnnee(): ?string
    {
        return $this->annee;
    }

    public function setAnnee(string $annee): static
    {
        $this->annee = $annee;

        return $this;
    }

    public function getNummois(): ?string
    {
        return $this->nummois;
    }

    public function setNummois(string $nummois): static
    {
        $this->nummois = $nummois;

        return $this;
    }

    public function getEnsemble(): ?string
    {
        return $this->ensemble;
    }

    public function setEnsemble(string $ensemble): static
    {
        $this->ensemble = $ensemble;

        return $this;
    }

    public function getProdlocal(): ?string
    {
        return $this->prodlocal;
    }

    public function setProdlocal(string $prodlocal): static
    {
        $this->prodlocal = $prodlocal;

        return $this;
    }

    public function getProdsemimp(): ?string
    {
        return $this->prodsemimp;
    }

    public function setProdsemimp(string $prodsemimp): static
    {
        $this->prodsemimp = $prodsemimp;

        return $this;
    }

    public function getProdimport(): ?string
    {
        return $this->prodimport;
    }

    public function setProdimport(string $prodimport): static
    {
        $this->prodimport = $prodimport;

        return $this;
    }
}
