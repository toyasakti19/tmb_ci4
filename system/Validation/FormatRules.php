<?php

/**
 * Format validation Rules.
 */

namespace CodeIgniter\Validation;

use DateTime;

class FormatRules
{
    /**
     * Alpha
     */
    public function alpha(?string $str = null): bool
    {
        return $str !== null && ctype_alpha($str);
    }

    /**
     * Alpha with spaces
     */
    public function alpha_space(?string $value = null): bool
    {
        if ($value === null) {
            return true;
        }

        return (bool) preg_match('/\A[A-Z ]+\z/i', $value);
    }

    /**
     * Alphanumeric with underscores and dashes
     */
    public function alpha_dash(?string $str = null): bool
    {
        return $str !== null && (bool) preg_match('/\A[a-z0-9_-]+\z/i', $str);
    }

    /**
     * Alphanumeric, spaces, and limited punctuation characters
     */
    public function alpha_numeric_punct(?string $str = null): bool
    {
        if ($str === null) {
            return false;
        }

        return (bool) preg_match('/\A[A-Z0-9 ~!#$%\&\*\-_+=|:.]+\z/i', $str);
    }

    /**
     * Alphanumeric
     */
    public function alpha_numeric(?string $str = null): bool
    {
        return $str !== null && ctype_alnum($str);
    }

    /**
     * Alphanumeric with spaces
     */
    public function alpha_numeric_space(?string $str = null): bool
    {
        return $str !== null && (bool) preg_match('/\A[A-Z0-9 ]+\z/i', $str);
    }

    /**
     * Any type of string
     */
    public function string($str = null): bool
    {
        return is_string($str);
    }

    /**
     * Decimal number
     */
    public function decimal(?string $str = null): bool
    {
        return $str !== null && (bool) preg_match('/\A[-+]?\d{0,}\.?\d+\z/', $str);
    }

    /**
     * Hexadecimal characters
     */
    public function hex(?string $str = null): bool
    {
        return $str !== null && ctype_xdigit($str);
    }

    /**
     * Integer
     */
    public function integer(?string $str = null): bool
    {
        return $str !== null && (bool) preg_match('/\A[-+]?\d+\z/', $str);
    }

    /**
     * Natural numbers (0,1,2,...)
     */
    public function is_natural(?string $str = null): bool
    {
        return $str !== null && ctype_digit($str);
    }

    /**
     * Natural numbers, excluding zero
     */
    public function is_natural_no_zero(?string $str = null): bool
    {
        return $str !== null && $str !== '0' && ctype_digit($str);
    }

    /**
     * Numeric
     */
    public function numeric(?string $str = null): bool
    {
        return $str !== null && (bool) preg_match('/\A[-+]?\d*\.?\d+\z/', $str);
    }

    /**
     * Regular expression match
     */
    public function regex_match(?string $str, string $pattern): bool
    {
        if (empty($str)) {
            return false;
        }

        if (strpos($pattern, '/') !== 0) {
            $pattern = "/{$pattern}/";
        }

        return (bool) preg_match($pattern, $str);
    }

    /**
     * Valid timezone
     */
    public function timezone(?string $str = null): bool
    {
        return $str !== null && in_array($str, timezone_identifiers_list(), true);
    }

    /**
     * Valid Base64
     */
    public function valid_base64(?string $str = null): bool
    {
        if ($str === null) {
            return false;
        }

        return base64_encode(base64_decode($str, true)) === $str;
    }

    /**
     * Valid JSON
     */
    public function valid_json(?string $str = null): bool
    {
        if ($str === null) {
            return false;
        }

        json_decode($str);
        return json_last_error() === JSON_ERROR_NONE;
    }

    /**
     * Valid email
     */
    public function valid_email(?string $str = null): bool
    {
        if ($str === null) {
            return false;
        }

        if (function_exists('idn_to_ascii') && preg_match('#\A([^@]+)@(.+)\z#', $str, $matches)) {
            $str = $matches[1] . '@' . idn_to_ascii($matches[2], 0, INTL_IDNA_VARIANT_UTS46);
        }

        return (bool) filter_var($str, FILTER_VALIDATE_EMAIL);
    }

    /**
     * Valid IP
     */
    public function valid_ip(?string $ip = null, ?string $which = null): bool
    {
        if ($ip === null) {
            return false;
        }

        $which = is_string($which) ? strtolower($which) : null;

        $filterFlag = match ($which) {
            'ipv4' => FILTER_FLAG_IPV4,
            'ipv6' => FILTER_FLAG_IPV6,
            default => null,
        };

$options = $which ?? 0; // Gunakan 0 sebagai default jika $which adalah null

return (bool) filter_var($ip, FILTER_VALIDATE_IP, $options) || 
       (! ctype_print($ip) && (bool) filter_var(inet_ntop($ip), FILTER_VALIDATE_IP, $options));

    }
}
