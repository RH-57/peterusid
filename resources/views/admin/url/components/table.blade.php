@foreach ($urls as $url)
<tr class="{{ $url->status === 'inactive' ? 'table-secondary' : '' }}">
    <td class="small">{{ $url->group }}</td>
    <td>{{ $url->name }}</td>
    <td class="small">
        @if($url->status === 'active')
            <a href="{{ route('urls.redirect', $url->id) }}" target="_blank" onclick="setTimeout(() => location.reload(), 500);">
                {{ $url->url }}
            </a>
        @else
            <span class="text-muted text-decoration-line-through">{{ $url->url }}</span>
        @endif
    </td>
    <td class="small">{{ $url->description }}</td>
    <td class="text-center small">
        <span class="badge {{ $url->status === 'active' ? 'bg-success' : 'bg-secondary' }}">
            {{ ucfirst($url->status) }}
        </span>
    </td>
    <td class="small">{{ $url->last_use ?? '-' }}</td>
    <td class="small">
        <a href="{{ route('urls.edit', $url->id) }}" class="btn btn-sm btn-warning">Edit</a>
        <form action="{{ route('urls.destroy', $url->id) }}" method="POST" style="display:inline-block;">
            @csrf
            @method('DELETE')
            <button class="btn btn-sm btn-danger" onclick="return confirm('Are you sure?')">Delete</button>
        </form>
    </td>
</tr>
@endforeach

