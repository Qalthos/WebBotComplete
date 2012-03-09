<%inherit file="local:templates.master"/>

<p>Here are all the currently running games.</p>

<div>
  <h2>Your games</h2>
  %for game in your_games:
    <div>
	  <a href='/game?game_id=${game.id}'>Watch ${game.name}</a>
    </div>
  %endfor

  <h2>Other recent games</h2>
  %for game in games:
    <div>
	  <a href='/game?game_id=${game.id}'>Watch ${game.name}</a>
    </div>
  %endfor
</div>
