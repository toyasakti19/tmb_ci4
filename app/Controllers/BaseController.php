<?php

namespace App\Controllers;

use CodeIgniter\Controller;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;
use Psr\Log\LoggerInterface;

/**
 * Class BaseController
 *
 * BaseController provides a convenient place for loading components
 * and performing functions that are needed by all your controllers.
 * Extend this class in any new controllers:
 *     class Home extends BaseController
 *
 * For security, be sure to declare any new methods as protected or private.
 */
class BaseController extends Controller
{
    /**
     * An array of helpers to be loaded automatically upon
     * class instantiation. These helpers will be available
     * to all other controllers that extend BaseController.
     *
     * @var array
     */
    protected $helpers = ['form', 'website'];

    /**
     * Instance of the session service.
     *
     * @var \CodeIgniter\Session\Session|null
     */
    protected $session;

    /**
     * Instance of the database connection.
     *
     * @var \CodeIgniter\Database\BaseConnection|null
     */
    protected $db;

    /**
     * Constructor.
     *
     * @param RequestInterface  $request
     * @param ResponseInterface $response
     * @param LoggerInterface   $logger
     */
    public function initController(RequestInterface $request, ResponseInterface $response, LoggerInterface $logger): void
    {
        // Do Not Edit This Line
        parent::initController($request, $response, $logger);

        //--------------------------------------------------------------------
        // Preload any models, libraries, etc., here.
        //--------------------------------------------------------------------
        // Initialize session and database services
        $this->session = \Config\Services::session();
        $this->db      = \Config\Database::connect();

        // Ensure proper initialization in case of null issues
        if ($this->session === null) {
            throw new \RuntimeException('Session service could not be initialized.');
        }

        if ($this->db === null) {
            throw new \RuntimeException('Database connection could not be established.');
        }
    }
}
