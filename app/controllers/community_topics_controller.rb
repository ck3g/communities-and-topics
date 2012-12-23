class CommunityTopicsController < ApplicationController

  before_filter :find_community

  # GET /community_topics
  # GET /community_topics.json
  def index
    @community_topics = CommunityTopic.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @community_topics }
    end
  end

  # GET /community_topics/1
  # GET /community_topics/1.json
  def show
    @community_topic = CommunityTopic.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @community_topic }
    end
  end

  # GET /community_topics/new
  # GET /community_topics/new.json
  def new
    @community_topic = CommunityTopic.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @community_topic }
    end
  end

  # GET /community_topics/1/edit
  def edit
    @community_topic = CommunityTopic.find(params[:id])
  end

  # POST /community_topics
  # POST /community_topics.json
  def create
    @community_topic = CommunityTopic.new(params[:community_topic])

    respond_to do |format|
      if @community_topic.save
        format.html { redirect_to [@community, @community_topic], notice: 'Community topic was successfully created.' }
        format.json { render json: [@community, @community_topic], status: :created, location: @community_topic }
      else
        format.html { render action: "new" }
        format.json { render json: @community_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /community_topics/1
  # PUT /community_topics/1.json
  def update
    @community_topic = CommunityTopic.find(params[:id])

    respond_to do |format|
      if @community_topic.update_attributes(params[:community_topic])
        format.html { redirect_to [@community, @community_topic], notice: 'Community topic was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @community_topic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /community_topics/1
  # DELETE /community_topics/1.json
  def destroy
    @community_topic = CommunityTopic.find(params[:id])
    @community_topic.destroy

    respond_to do |format|
      format.html { redirect_to community_topics_url }
      format.json { head :no_content }
    end
  end

  private
  def find_community
    # @community = Community.find params[:community_id] # without to_param
    @community = Community.find_by_slug params[:community_id] # with to_param
  end
end
