<?php
/**
 * Zend Framework (http://framework.zend.com/)
 *
 * @link      http://github.com/zendframework/ZendSkeletonApplication for the canonical source repository
 * @copyright Copyright (c) 2005-2015 Zend Technologies USA Inc. (http://www.zend.com)
 * @license   http://framework.zend.com/license/new-bsd New BSD License
 */

return [
    'router' => [
        'routes' => [
        	'Authors-home' => [
				'type'    => 'regex',
				'options' => [
					'regex'    => '.*/Authors/.*/id/(?<idpage>[0-9]+)',
					'defaults' => [
						'controller' => 'Authors\Controller\Index',
						'action'     => 'indexsite',
						],
					'spec' => '%idpage'
					]
			],
            'Authors-homepage' => [
                'type'    => 'Literal',
                'options' => [
                    'route'    => '/',
                    'defaults' => [
                        'controller'     => 'MelisFront\Controller\Index',
                        'action'         => 'index',
                        'renderType'     => 'melis_zf2_mvc',
                        'renderMode'     => 'front',
                        'preview'        => false,
                        'idpage'         => 1
                    ]
                ],
            ],
            // The following is a route to simplify getting started creating
            // new controllers and actions without needing to create a new
            // module. Simply drop new controllers in, and you can access them
            // using the path /application/:controller/:action
            'applicationAuthors' => [
                'type'    => 'Literal',
                'options' => [
                    'route'    => '/Authors',
                    'defaults' => [
                        '__NAMESPACE__' => 'Authors\Controller',
                        'controller'    => 'Index',
                        'action'        => 'indexsite',
                    ],
                ],
                'may_terminate' => true,
                'child_routes' => [
                    'default' => [
                        'type'    => 'Segment',
                        'options' => [
                            'route'    => '/[:controller[/:action]]',
                            'constraints' => [
                                'controller' => '[a-zA-Z][a-zA-Z0-9_-]*',
                                'action'     => '[a-zA-Z][a-zA-Z0-9_-]*',
                            ],
                            'defaults' => [
                            ],
                        ],
                    ],
                ],
            ], 
        ],
    ],
    'service_manager' => [
        'abstract_factories' => [
            'Zend\Cache\Service\StorageCacheAbstractServiceFactory',
            'Zend\Log\LoggerAbstractServiceFactory',
        ],
        'aliases' => [
            'translator' => 'MvcTranslator',
        ],
    ],
    'translator' => [
    ],
    'controllers' => [
        'invokables' => [
            'Authors\Controller\Base'      => 'Authors\Controller\BaseController',
            'Authors\Controller\Index'      => 'Authors\Controller\IndexController',
            'Authors\Controller\Blog'       => 'Authors\Controller\BlogController',
            'Authors\Controller\ContactUs'       => 'Authors\Controller\ContactUsController',
            'Authors\Controller\Page404'    => 'Authors\Controller\Page404Controller',
	    'Authors\Controller\CustomSettings'         => 'Authors\Controller\CustomSettingsController',
        ],
    ],
    'view_manager' => [
        'display_not_found_reason' => true,
        'display_exceptions'       => true,
        'doctype'                  => 'HTML5',
        'not_found_template'       => 'error/404',
        'exception_template'       => 'error/index',
        'controller_map' => [
            'Authors' => true,
        ],
        'template_map' => [
            'Authors/defaultLayout'  	=> __DIR__ . '/../view/layout/defaultLayout.phtml',
            'Authors/errorLayout'        => __DIR__ . '/../view/layout/Page404.phtml',
            'customsettings/custom-settings' => __DIR__ . '/../view/authors/custom-settings/custom-settings.phtml',
            // Errors layout
            'error/404'               	=> __DIR__ . '/../view/error/404.phtml',
            'error/index'             	=> __DIR__ . '/../view/error/index.phtml',

            // Plugins template
            'contanctUs'                => __DIR__ . '/../view/authors/contactus/form.phtml',
            'Blogs'                => __DIR__ . '/../view/authors/plugins/bloglist.phtml',
            'BlogDetails'                => __DIR__ . '/../view/authors/plugins/blogdetails.phtml',
            'BlogSidebar'                => __DIR__ . '/../view/authors/plugins/sidebar.phtml',
        ],
        'template_path_stack' => [
            __DIR__ . '/../view',
        ],
    ],
];
