require File.dirname(__FILE__) + '/../../spec_helper'
require 'matrix'

describe "Matrix#column_vectors" do

  before(:each) do
    @vectors = Matrix[ [1,2], [3,4] ].column_vectors
  end

  it "returns an Array" do
    Matrix[ [1,2], [3,4] ].column_vectors.should be_kind_of(Array)
  end

  it "returns an Array of Vectors" do
    @vectors.all? {|v| v.should be_kind_of(Vector)}
  end  

  it "returns each column as a Vector" do
    @vectors.should == [Vector[1,3], Vector[2,4]]
  end

  it "returns an empty Array for empty matrices" do
    Matrix[ [] ].column_vectors.should == []
  end

end
