<?php

namespace App\Form;

use App\Entity\FonctionValide;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints as Assert;

class FonctionValideType extends AbstractType
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
            ->add('ensemble', NumberType::class, $numberField('Ensemble'))
            ->add('prod_alim_bois_nalc', NumberType::class, $numberField('Produits alimentaires et boissons non alcoolisées'))
            ->add('tissu_vetement', NumberType::class, $numberField('Tissus et vêtements'))
            ->add('logt_et_combust', NumberType::class, $numberField('Logement et combustibles'))
            ->add('am_eqmena_entc_m', NumberType::class, $numberField('Ameublement, équipement ménager et entretien courant'))
            ->add('sante', NumberType::class, $numberField('Santé'))
            ->add('transports', NumberType::class, $numberField('Transports'))
            ->add('loisir_spect_cult', NumberType::class, $numberField('Loisirs, spectacles et culture'))
            ->add('enseignement', NumberType::class, $numberField('Enseignement'))
            ->add('hotel_cafe_rest', NumberType::class, $numberField('Hôtels, cafés et restaurants'))
            ->add('autres_bien_serv', NumberType::class, $numberField('Autres biens et services'))
            ->add('bois_alc_tab', NumberType::class, $numberField('Boissons alcoolisées et tabac'))
            ->add('communications', NumberType::class, $numberField('Communications'));
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => FonctionValide::class,
        ]);
    }

}


