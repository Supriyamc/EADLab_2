$(document).ready(function() {
    
    var isAsst = 0,
        isAssoc = 0,
        isProf = 0,
        isHead = 0;
    var Max_Teaching_Score = 60,
        Max_Research_Score = 10,
        Max_Service_Score = 30;
    var Teaching_Score = 0,
    	resScore = 0,
    	serScore = 0;
    //$("#totalScore").val(Max_Teaching_Score);
    updateDesig();
    $("#designation").change(function() {
       /* if ($("#designation").val().search("Assistant") > -1) {
            isAsst = 1;
            isAssoc = 0;
            isProf = 0;
            isHead = 0;
        } else if ($("#designation").val().search("Associate") > -1) {
            isAsst = 0;
            isAssoc = 1;
            isProf = 0;
            isHead = 0;
        } else if (($("#designation").val().search("Professor") > -1) && ($("#designation").val().search("Head") == -1)) {
            isAsst = 0;
            isAssoc = 0;
            isProf = 1;
            isHead = 0;
        } else if ($("#designation").val().search("Head") > -1) {
            isAsst = 0;
            isAssoc = 0;
            isProf = 0;
            isHead = 1;
        }*/
        
        updateDesig();
        
        //$("#totalScore").val(Max_Teaching_Score);
    });

    $("#fciScore").change(function() {
        updateScore(1);
    });

    $("#nirfJournals").change(function() {
        updateScore(2);
    });

    $("#indexedPapers").change(function() {
        updateScore(3);
    });

    $("#chairReviewer").change(function() {
        updateScore(12);
    });

    $("#fswCoordinator").change(function() {
        updateScore(13);
    });

    $("#invitedTalks").change(function() {
        updateScore(14);
    });

    $("#eventsOutside").change(function() {
        updateScore(15);
    });

    function updateDesig() {
    	 if ($("#designation").val().search("Assistant") > -1) {
             isAsst = 1;
             isAssoc = 0;
             isProf = 0;
             isHead = 0;
         } else if ($("#designation").val().search("Associate") > -1) {
             isAsst = 0;
             isAssoc = 1;
             isProf = 0;
             isHead = 0;
         } else if (($("#designation").val().search("Professor") > -1) && ($("#designation").val().search("Head") == -1)) {
             isAsst = 0;
             isAssoc = 0;
             isProf = 1;
             isHead = 0;
         } else if ($("#designation").val().search("Head") > -1) {
             isAsst = 0;
             isAssoc = 0;
             isProf = 0;
             isHead = 1;
         }
    	
    	if (isAsst == 1) {
            Max_Teaching_Score = 60;
            Max_Research_Score = 10;
            Max_Service_Score = 30;
        } else if (isAssoc == 1) {
            Max_Teaching_Score = 50;
            Max_Research_Score = 20;
            Max_Service_Score = 30;
        } else if (isProf == 1) {
            Max_Teaching_Score = 40;
            Max_Research_Score = 30;
            Max_Service_Score = 30;
        } else if (isHead == 1) {
            Max_Teaching_Score = 40;
            Max_Research_Score = 30;
            Max_Service_Score = 30;
        }
    	updateScore(1);
    }

    function updateScore(slNo) {
        var totalScore = 0;
        /*var Teaching_Score = 0,
            resScore = 0,
            serScore = 0;*/
        var FCI = $("#fciScore").val();
        var refJournal = $("#nirfJournals").val();
        var indexedPapers = $("#indexedPapers").val();
        var chairReview = $("#chairReviewer").val();
        var fswC = $("#fswCoordinator").val();
        var inviT = $("#invitedTalks").val();
        var events = $("#eventsOutside").val();

        //switch (slNo) {
          //  case 1:
                if (FCI == 0) {
                    Teaching_Score = 0;
                } else {
                    if (FCI >= 85) {
                        Teaching_Score = 1 * Max_Teaching_Score;
                    } else if (FCI >= 80 && FCI < 85) {
                        Teaching_Score = 0.9 * Max_Teaching_Score;
                    } else if (FCI >= 75 && FCI < 80) {
                        Teaching_Score = 0.8 * Max_Teaching_Score;
                    } else if (FCI >= 70 && FCI < 75) {
                        Teaching_Score = 0.7 * Max_Teaching_Score;
                    } else if (FCI < 70 && FCI > 0) {
                        Teaching_Score = 0.4 * Max_Teaching_Score;
                    }
                }
            //    break;

          // case 2:
                if (isAsst == 1) {

                    if (refJournal > 0) {
                        if (indexedPapers > 0) {
                            resScore = Max_Research_Score;
                        } else if (indexedPapers < 1) {
                            resScore = Max_Research_Score;
                        }
                    } else if (refJournal < 1) {
                        if (indexedPapers > 0) {
                            resScore = Max_Research_Score / 2;
                        } else if (indexedPapers < 1) {
                            resScore = 0;
                        }
                    }
                } else if (isAssoc == 1) {
                    if (refJournal > 0) {
                        if (indexedPapers > 0) {
                            resScore = Max_Research_Score;
                        } else if (indexedPapers < 1) {
                            resScore = Max_Research_Score;
                        }
                    } else if (refJournal < 1) {
                        if (indexedPapers > 0) {
                            resScore = Max_Research_Score / 4;
                        } else if (indexedPapers < 1) {
                            resScore = 0;
                        }
                    }
                } else if (isProf == 1) {
                    if (refJournal > 0) {
                        if (indexedPapers > 0) {
                            resScore = Max_Research_Score;
                        } else if (indexedPapers < 1) {
                            resScore = Max_Research_Score;
                        }
                    } else if (refJournal < 1) {
                        if (indexedPapers > 0) {
                            resScore = Max_Research_Score / 5;
                        } else if (indexedPapers < 1) {
                            resScore = 0;
                        }
                    }
                } else if (isHead == 1) {
                    if (refJournal > 0) {
                        if (indexedPapers > 0) {
                            resScore = Max_Research_Score;
                        } else if (indexedPapers < 1) {
                            resScore = Max_Research_Score;
                        }
                    } else if (refJournal < 1) {
                        if (indexedPapers > 0) {
                            resScore = Max_Research_Score / 5;
                        } else if (indexedPapers < 1) {
                            resScore = 0;
                        }
                    }
                }
                //break;
           // case 3:
               /* if (isAsst == 1) {

                    if (refJournal > 0) {
                        if (indexedPapers > 0) {
                            resScore = Max_Research_Score;
                        } else if (indexedPapers < 1) {
                            resScore = Max_Research_Score;
                        }
                    } else if (refJournal < 1) {
                        if (indexedPapers > 0) {
                            resScore = Max_Research_Score / 2;
                        } else if (indexedPapers < 1) {
                            resScore = 0;
                        }
                    }
                } else if (isAssoc == 1) {
                    if (refJournal > 0) {
                        if (indexedPapers > 0) {
                            resScore = Max_Research_Score;
                        } else if (indexedPapers < 1) {
                            resScore = Max_Research_Score;
                        }
                    } else if (refJournal < 1) {
                        if (indexedPapers > 0) {
                            resScore = Max_Research_Score / 4;
                        } else if (indexedPapers < 1) {
                            resScore = 0;
                        }
                    }
                } else if (isProf == 1) {
                    if (refJournal > 0) {
                        if (indexedPapers > 0) {
                            resScore = Max_Research_Score;
                        } else if (indexedPapers < 1) {
                            resScore = Max_Research_Score;
                        }
                    } else if (refJournal < 1) {
                        if (indexedPapers > 0) {
                            resScore = Max_Research_Score / 5;
                        } else if (indexedPapers < 1) {
                            resScore = 0;
                        }
                    }
                } else if (isHead == 1) {
                    if (refJournal > 0) {
                        if (indexedPapers > 0) {
                            resScore = Max_Research_Score;
                        } else if (indexedPapers < 1) {
                            resScore = Max_Research_Score;
                        }
                    } else if (refJournal < 1) {
                        if (indexedPapers > 0) {
                            resScore = Max_Research_Score / 5;
                        } else if (indexedPapers < 1) {
                            resScore = 0;
                        }
                    }
                }
                break;
            case 12:*/
                if (chairReview > 0) {
                    serScore = Max_Service_Score;
                } else if (chairReview < 1) {
                    if (fswC > 0 || inviT > 0 || events > 0) {
                        serScore = Max_Service_Score / 2;
                    } else {
                        serScore = 0;
                    }
                }
               // break;
            //case 13:
              /*  if (chairReview > 0) {
                    serScore = Max_Service_Score;
                } else if (chairReview < 1) {
                    if (fswC > 0 || inviT > 0 || events > 0) {
                        serScore = Max_Service_Score / 2;
                    } else {
                        serScore = 0;
                    }
                }
                break;
            case 14:
                if (chairReview > 0) {
                    serScore = Max_Service_Score;
                } else if (chairReview < 1) {
                    if (fswC > 0 || inviT > 0 || events > 0) {
                        serScore = Max_Service_Score / 2;
                    } else {
                        serScore = 0;
                    }
                }
                break;
            case 15:
                if (chairReview > 0) {
                    serScore = Max_Service_Score;
                } else if (chairReview < 1) {
                    if (fswC > 0 || inviT > 0 || events > 0) {
                        serScore = Max_Service_Score / 2;
                    } else {
                        serScore = 0;
                    }
                }
                break;*/
      //  }
        //alert(Teaching_Score + resScore + serScore);
        totalScore =  parseInt(Teaching_Score) + parseInt(resScore) + parseInt(serScore) ;
        $("#totalScore").val(totalScore);
    }
});