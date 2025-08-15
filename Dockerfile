FROM ctfd/ctfd:latest

# Copy your challenge file into the image
COPY hack_and_hunt_ctf.json /tmp/hack_and_hunt_ctf.json

# Set Railway port
ENV PORT=8080

# Automatically import the challenges when the container starts
CMD sh -c "python3 manage.py import_challenges /tmp/hack_and_hunt_ctf.json || true && exec /entrypoint.sh"
