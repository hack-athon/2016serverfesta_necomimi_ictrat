# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])

@eeg = Eeg.new
@eeg.delta = 200
@eeg.theta = 200
@eeg.lowalpha = 200
@eeg.highalpha  = 200
@eeg.lowbeta = 200
@eeg.highbeta = 200
@eeg.lowgamma = 200
@eeg.midgamma = 200
@eeg.attention  = 200
@eeg.meditation = 200
@eeg.save

@eeg = Eeg.new
@eeg.delta = 300
@eeg.theta = 300
@eeg.lowalpha = 300
@eeg.highalpha  = 300
@eeg.lowbeta = 300
@eeg.highbeta = 300
@eeg.lowgamma = 300
@eeg.midgamma = 300
@eeg.attention  = 300
@eeg.meditation = 300
@eeg.save



