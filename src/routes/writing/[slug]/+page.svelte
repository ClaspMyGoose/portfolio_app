
<script lang="ts">
    // import { page } from '$app/state'
    import type { PageData }  from "./$types";
    
    let { data } = $props(); 
    const { rows }: PageData = data; 
    const article = rows ? rows[0] : null

</script>

<section class="section">
    <a id="writing-back" class="btn btn-secondary" href="/#writing-section">← Back to writing</a>
</section>
<section id="writing-section" class="section">
    <div class="container">
            {#if rows?.length !== 1}
            <h2>Something went wrong, ask Claude about error messages</h2>
            {:else}
              <div class="writing-component">
                <div class="writing-header">
                  <h3>{article.piece_title}</h3>
                  <div>
                    <span class="tag-pill">{article.piece_category}</span>
                  </div>
                </div>
                <p>{article.piece_text}</p>
              </div>
            {/if}
            </div>
</section>