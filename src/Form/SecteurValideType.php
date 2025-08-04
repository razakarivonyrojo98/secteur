<?php

namespace App\Form;

use App\Entity\SecteurValide;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints as Assert;

class SecteurValideType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $numberField = function (string $label) {
            return [
                'label' => $label,
                'scale' => 2,
                'html5' => true,
                'attr' => [
                    'step' => '0.01',
                    'min' => 0,
                    'class' => 'numeric-field'
                ],
                'constraints' => [
                    new Assert\NotBlank(),
                    new Assert\Type(['type' => 'numeric'])
                ]
            ];
        };

        $builder
            ->add('annee', NumberType::class, $numberField('Année'))
            ->add('nummois', NumberType::class, $numberField('Numéro du mois'))
            ->add('ensemble', NumberType::class, $numberField('Valeur Ensemble'))
            ->add('prodvivr_n_t', NumberType::class, $numberField('Produits vivriers non transformés'))
            ->add('prodvivr_t_n_riz', NumberType::class, $numberField('Produits vivriers transformés (hors riz)'))
            ->add('prodvivr_t_riz', NumberType::class, $numberField('Produits vivriers transformés (riz)'))
            ->add('prodmanufind', NumberType::class, $numberField('Produits manufacturés industriels'))
            ->add('prodmanufart', NumberType::class, $numberField('Produits manufacturés artisanaux'))
            ->add('servpubl', NumberType::class, $numberField('Services publics'))
            ->add('servpriv', NumberType::class, $numberField('Services privés'))
            ->add('ppn', NumberType::class, $numberField('Produits de première nécessité (PPN)'));
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => SecteurValide::class,
        ]);
    }
}
