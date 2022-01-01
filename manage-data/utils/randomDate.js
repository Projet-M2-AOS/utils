export function randomDate(startDate, endDate) {
  const startTime = startDate.getTime();
  const endTime = endDate.getTime();
  return new Date(startTime + Math.random() * (endTime - startTime));
}
