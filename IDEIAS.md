# Idéias

## Schema
```json
Categories: []

Photo: {
	title:string,
	alt:string,
	file:blob
}

Location: {
	longitute:float,
	latitude:float,
	area:float
}

CharacteristicGroups: {
	characteristics:[string]
}

Characteristics: { 	groups:[CharacteristicsGroups]
} 

SpecificFields: {
   //The same from Characteristics
}

Options: {
   //Avaliar
}

Comments: {

}

ReservationPolicy: {

}

Listing: {
	title:string,
	description:string,
	rules:string,
	characteristics:[Characteristics],
	specificFields:[SpecificFields],
	options:[Options],
	comments:[Comments],
	photos:[Photo],
	location: Location,
	calendar:[Date],//Disponibilidades
	lenghtService:number,
	price:float,
	reservationPolicy:ReservationPolicy
}

User: []

```