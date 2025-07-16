@foreach($urls as $url)
<tr>
  <td class="small align-middle">
    <a href="#" class="open-in-iframe" data-url="{{ route('urls.redirect', $url->id) }}">
      {{ $url->url }}
    </a>
  </td>
  <td class="small align-middle text-nowrap">
    {{ $url->last_use ? \Carbon\Carbon::parse($url->last_use)->format('d M Y H:i') : '-' }}
  </td>
</tr>
@endforeach
