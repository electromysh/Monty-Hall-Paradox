class Door
  attr_accessor :id, :whats_behind, :state

  def initialize(params = {})
    @state = params.fetch(:state, 'close')
    @whats_behind = params.fetch(:whats_behind, 'ship')
  end

  def set_id(id)
    @id = id
  end

  def set_whats_behind(subject)
    @whats_behind = subject
  end

  def set_state(state)
    @state = state
  end

end