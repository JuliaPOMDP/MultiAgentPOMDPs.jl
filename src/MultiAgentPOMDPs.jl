module MultiAgentPOMDPs

using POMDPs

abstract type JointMDP{S, A<:AbstractVector} <: MDP{S, A} end


"""
    function n_agents(m::JointMDP)
Return the number of agents in the (PO)MDP
"""
function n_agents end

"""
    function agent_actions(m::JointMDP, idx::Int64, s::S) where S
Returns the discrete actions for the given agent index.

!!! note
    This will be called a LOT so it should not allocate each time....
"""
function agent_actions end

"""
    function agent_states(m::JointMDP, idx::Int64)
Returns the discrete states for the given agent index
"""
function agent_states end

"""
    function agent_actionindex(m::JointMDP, idx::Int64, a::A) where A
Returns the integer index of action `a` for agent `idx`. Used for discrete models only.
"""
function agent_actionindex end

"""
    function agent_actionindex(m::JointMDP, idx::Int64, s::S) where S
Returns the integer index of state `s` for agent `idx`. Used for discrete models only.
"""
function agent_stateindex end

"""
    function coordination_graph(m::JointMDP)
    function coordination_graph(m::JointMDP, s::S) where S
Returns the LightGraphs.SimpleGraph (or any appropriate structure) for the coordination graph.
"""
function coordination_graph end


export JointMDP, n_agents, agent_actions, agent_states, agent_actionindex, agent_stateindex, agent_reward, coordination_graph
end
