<?php

namespace App\Form;

use App\Entity\OrigineValide;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\Form\Extension\Core\Type\NumberType;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\Form\Extension\Core\Type\IntegerType;


class OrigineValideType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        
            $anneeField = function (string $label) {
            return [
                'label' => $label,
                    'attr' => [
                        'min' => 1900,
                        'max' => 2100,
                        'step' => 1,
                        'class' => 'numeric-field'
                    ],
                    'constraints' => [
                        new Assert\NotBlank(),
                        new Assert\Range([
                            'min' => 1900,
                            'max' => 2100,
                            'notInRangeMessage' => 'L\'année doit être comprise entre {{ min }} et {{ max }}.'
                        ]),
                        new Assert\Type(['type' => 'integer'])
                    ]
            ];
        };

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
            ->add('annee', IntegerType::class, $anneeField('Année'))
            ->add('nummois', NumberType::class, $numberField('Numéro du mois'))
            ->add('ensemble', NumberType::class, $numberField('Valeur totale'))
            ->add('prodlocal', NumberType::class, $numberField('Production locale'))
            ->add('prodsemimp', NumberType::class, $numberField('Production semi-importée'))
            ->add('prodimport', NumberType::class, $numberField('Production importée'));
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => OrigineValide::class,
        ]);
    }
}
