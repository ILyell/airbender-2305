class SearchFacade

    attr_reader :params

    def initialize(params)
        @params = params
    end

    def service
        @_avatar_service ||= AvatarService.new
    end

    def nation_members
        members = service.get_nation_members(@params[:nation])
        members[1..25].map do |member|
            Character.new(member)
        end
    end
end