<?php
namespace App\Security\Exception;

use Symfony\Component\Security\Core\Exception\AuthenticationException;

class InvalidUserStatusException extends AuthenticationException
{
    public function getMessageKey(): string
    {
        return 'Votre compte est désactivé ou en attente de validation.';
    }
}
