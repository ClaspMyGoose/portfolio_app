/** @type {import('tailwindcss').Config} */

export default {
	content: ['./src/**/*.{html,js,svelte,ts}'],

	theme: {
		extend: {
		colors: {
			primary: '#1f2937',   // Clean dark gray
			secondary: '#6b7280', // Muted gray
		},
		fontFamily: {
			sans: ['Inter', 'system-ui', 'sans-serif'],
		},
		spacing: {
			'18': '4.5rem',
			'88': '22rem',
		}
		},
  	},

	plugins: []
} 
