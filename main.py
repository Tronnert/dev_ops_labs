from starlette.applications import Starlette
from starlette.responses import HTMLResponse
from starlette.routing import Route

async def home(request):
    return HTMLResponse(f"""<pre>
        url: {str(request.url)}
        client:
            host: {request.client.host}
            port: {request.client.port}
        headers:
            {('<br>' + '&nbsp' * 12).join(k + ': ' + v for k, v in request.headers.items())}
    </pre>""")

app = Starlette(debug=True, routes=[Route('/', home),])