class StudentTablesController < ApplicationController
  before_action :set_student_table, only: [:show, :edit, :update, :destroy]

  # GET /student_tables
  # GET /student_tables.json
  def index
    @student_tables = StudentTable.all
  end

  # GET /student_tables/1
  # GET /student_tables/1.json
  def show
  end

  # GET /student_tables/new
  def new
    @student_table = StudentTable.new
  end

  # GET /student_tables/1/edit
  def edit
  end

  # POST /student_tables
  # POST /student_tables.json
  def create
    @student_table = StudentTable.new(student_table_params)
    @student_table.resume.attach(params[:student_table][:resume])

    respond_to do |format|
      if @student_table.save
        format.html { redirect_to @student_table, notice: 'Student table was successfully created.' }
        format.json { render :show, status: :created, location: @student_table }
      else
        format.html { render :new }
        format.json { render json: @student_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_tables/1
  # PATCH/PUT /student_tables/1.json
  def update
    respond_to do |format|
      if @student_table.update(student_table_params)
        format.html { redirect_to @student_table, notice: 'Student table was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_table }
      else
        format.html { render :edit }
        format.json { render json: @student_table.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_tables/1
  # DELETE /student_tables/1.json
  def destroy
    @student_table.destroy
    respond_to do |format|
      format.html { redirect_to student_tables_url, notice: 'Student table was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_table
      @student_table = StudentTable.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_table_params
      params.require(:student_table).permit(:branch, :name, :contactNumber, :gender, :cgpa, :permanentAddress, :semester, :resume)
    end
end
