class ProjectNotesController < ApplicationController
  # GET /project_notes
  # GET /project_notes.json

before_filter :set_headers

  def index
    @project_notes = ProjectNote.all

    render json: @project_notes
  end

  # GET /project_notes/1
  # GET /project_notes/1.json
  def show
    @project_note = ProjectNote.find(params[:id])

    render json: @project_note
  end

  # POST /project_notes
  # POST /project_notes.json
  def create
    @project_note = ProjectNote.new(project_note_params(params[:project_note]))

    if @project_note.save
      render json: @project_note, status: :created, location: @project_note
    else
      render json: @project_note.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /project_notes/1
  # PATCH/PUT /project_notes/1.json
  def update
    @project_note = ProjectNote.find(params[:id])

    if @project_note.update(project_note_params(params[:project_note]))
      head :no_content
    else
      render json: @project_note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /project_notes/1
  # DELETE /project_notes/1.json
  def destroy
    @project_note = ProjectNote.find(params[:id])
    @project_note.destroy

    head :no_content
  end

  private
    
    def project_note_params(params)
      params.permit(:noteID, :projectID, :userID, :note)
    end

  def set_headers
	headers['Access-Control-Allow-Origin'] = '*'
  end


end
