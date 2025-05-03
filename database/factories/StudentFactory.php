<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class StudentFactory extends Factory
{
    public function definition()
    {
        return [
            'nisn' => $this->faker->unique()->numerify('123456##'),
            'name' => $this->faker->name,
            'nama_ortu' => $this->faker->name,
            'tempat_tgl_lahir' => $this->faker->city . ', ' . $this->faker->date,
            'nis' => $this->faker->numerify('######'),
            'class' => $this->faker->randomElement(['12 IPA 5', '12 IPA 6']),
            'prog_keahlian' => 'Teknik Informatika',
            'komp_keahlian' => 'Jaringan Komputer',
            'status' => 1,
            'message' => 'ANDA DINYATAKAN LULUS',
            'pai' => $this->faker->numberBetween(70, 100),
            'pkn' => $this->faker->numberBetween(70, 100),
            'bindo' => $this->faker->numberBetween(70, 100),
            'pjok' => $this->faker->numberBetween(70, 100),
            'sejarah' => $this->faker->numberBetween(70, 100),
            'seni' => $this->faker->numberBetween(70, 100),
            'bsun' => $this->faker->numberBetween(70, 100),
            'mat' => $this->faker->numberBetween(70, 100),
            'bing' => $this->faker->numberBetween(70, 100),
            'inf' => $this->faker->numberBetween(70, 100),
            'ipas' => $this->faker->numberBetween(70, 100),
            'dk' => $this->faker->numberBetween(70, 100),
            'kk' => $this->faker->numberBetween(70, 100),
            'pkl' => $this->faker->numberBetween(70, 100),
            'bjep' => $this->faker->numberBetween(70, 100),
            'dg' => $this->faker->numberBetween(70, 100),
        ];
    }
}