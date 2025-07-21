<script>
  export let icon;
  export let size = 16;
</script>

<svg viewBox="0 0 24 24" class="inline" style="width: {size}px; height: {size}px;">
  <path fill="currentColor" d={icon.path} />
</svg>