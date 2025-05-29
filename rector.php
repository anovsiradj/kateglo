<?php

use Rector\Config\RectorConfig;
use Rector\Set\ValueObject\SetList;

return RectorConfig::configure()
    ->withPaths([
        // __DIR__ . '/pear',
        // __DIR__ . '/config',
        // __DIR__ . '/classes',
        // __DIR__ . '/modules',
        __DIR__ . '/api.php',
        __DIR__ . '/index.php',
        __DIR__ . '/common.php',
        __DIR__ . '/sitemap.php',
        __DIR__ . '/opensearch_desc.php',
    ])
    ->withSets([
        SetList::PHP_56,
        SetList::PHP_74,
        SetList::PHP_80,
    ])
    ->withTypeCoverageLevel(0)
    ->withDeadCodeLevel(0)
    ->withCodeQualityLevel(0);
