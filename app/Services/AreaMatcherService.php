<?php

namespace App\Services;
use Illuminate\Support\Str;
class AreaMatcherService
{
    protected function normalize(string $text): string
    {
        $text = strtolower($text);
        $text = preg_replace('/[^a-z0-9\s]/', ' ', $text);
        return preg_replace('/\s+/', ' ', trim($text));
    }

    public function match(string $address, array $areas): ?string
    {
        
        //dd($areas);
        $address = $this->normalize($address);
        $matches;

        foreach ($areas as $area) {
            if (!isset($area['name'])) {
                continue;
            }

            $areaName = $this->normalize($area['name']);
//dd($areaName);
            if (Str::contains($areaName,$address)) {
                //dd($areaName);
                $matches = $area['id'];
            }
        }

        if (empty($matches)) {
            return null;
        }

        //arsort($matches); // longest match first
        return $matches;
    }
}
