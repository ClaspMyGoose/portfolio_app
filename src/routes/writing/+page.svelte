<script lang="ts">
	import type { PageData } from "./$types";

    let { data }: { data: PageData} = $props(); 

    if ( data.error !== null) {
        console.log(`Error loading data: ${data.error}`); 
    }
</script>



<h1>Writing</h1>

{#if data.error !== null}
<p>There was an error loading data, please reload the page.</p>
{:else}
<ul>
{#each data.rows as piece}
    <li id={piece.piece_id}>
        <p>{piece.piece_text}</p>
        <br>
        <p>{piece.piece_category}</p>
        <br>
    </li>
{/each}
</ul>
{/if}



