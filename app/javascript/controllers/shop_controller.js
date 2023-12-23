import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="shop"
export default class extends Controller {
  connect() {
    document.querySelectorAll('.btn-buy-player').forEach(button => {
    button.addEventListener('click', function() {
      const leagueId = this.getAttribute('data-league-id'); // Make sure to add this attribute in your HTML
      const teamId = this.getAttribute('data-team-id');
      const playerId = this.getAttribute('data-player-id');

      fetch(`/leagues/${leagueId}/teams/${teamId}`, {
        method: 'PATCH', // Since it's an update, use PATCH or PUT
        headers: {
          'Content-Type': 'application/json',
          'X-CSRF-Token': document.querySelector('[name="csrf-token"]').content
        },
        body: JSON.stringify({ player_id: playerId })
      })
      .then(response => response.json())
      .then(data => {
        // Handle the response data
      })
      .catch(error => {
        console.error('Error:', error);
      });
    });
  });
  }
}
