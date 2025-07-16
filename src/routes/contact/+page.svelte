<script lang="ts">
	//import { error } from '@sveltejs/kit';
    import type { PageData } from './$types'

    let { data }: { data : PageData} = $props();

    if (data.error !== null) {
        console.error(data.error)
        //throw error(500, 'Database Connection Failed') 
    }; 
</script>

<h1>Contact</h1>


{#if data.error !== null}
<p class='err'>There was an issue loading data, please reload the page.</p>
{:else}
<ul>
{#each data.rows as row}
    <li id={`contact_${row.contact_id}`}><a href={row.contact_val}>{row.contact_desc}</a></li>
{/each}
</ul>
{/if}

