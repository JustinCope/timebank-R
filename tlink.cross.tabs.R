
#' @title
#' @description
#' 
#' @details
#' 
#' @param
#' @return
#' @examples
#'
#' @seealso
hostCompEventTime <- function(signalData){
	event_event <- nrow(subset(signalData, !is.na(eventInstanceID) & !is.na(relatedToEventInstance)))
	event_time 	<- nrow(subset(signalData, !is.na(eventInstanceID) & !is.na(relatedToTime)))
	time_event 	<- nrow(subset(signalData,!is.na(timeID) & !is.na(relatedToEventInstance)))
	time_time 	<- nrow(subset(signalData,!is.na(timeID) & !is.na(relatedToTime)))
	comp_events <- c(event_event, time_event, sum(event_event, time_event))
	comp_times 	<- c(event_time, time_time, sum(event_time, time_time))
	totals 		<- c(sum(event_event, event_time), sum(time_event, time_time), nrow(signalData))
	host_comp 	<- data.frame(comp_events, comp_times, totals)
	rownames(host_comp) <- c('host_events', 'host_times', 'totals')
	return(host_comp)
}


#' @title
#' @description
#' 
#' @details
#' 
#' @param
#' @return
#' @examples
#'
#' @seealso
hostCompPOS <- function(signalData){
	event_event <- subset(signalData, !is.na(eventInstanceID) & !is.na(relatedToEventInstance))
	event_time 	<- subset(signalData, !is.na(eventInstanceID) & !is.na(relatedToTime))
	time_event 	<- subset(signalData,!is.na(timeID) & !is.na(relatedToEventInstance))
	time_time 	<- subset(signalData,!is.na(timeID) & !is.na(relatedToTime))
	print(xtabs(~ pos.e_host + pos.e_comp, data=event_event))
	print(xtabs(~ pos.e_host + type.t_comp, data=event_time))
	print(xtabs(~ type.t_host + pos.e_comp, data=time_event))
	print(xtabs(~ type.t_host + type.t_comp, data=time_time))
}