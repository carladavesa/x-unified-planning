(define (domain supply-chain)
(:predicates  (at-location_truck1_mill2)
 (at-location_truck1_mill1)
 (place-order_sugarcane_mill3)
 (current-process_mill1_brand1)
 (at-location_truck1_mill3)
 (busy_mill1)
 (current-process_mill2_brand3)
 (at-location_truck2_mill3)
 (current-process_mill3_brand1)
 (busy_mill2)
 (at-location_truck2_depot1)
 (at-location_truck1_depot2)
 (busy_mill3)
 (current-process_mill1_brand2)
 (at-location_truck2_depot3)
 (current-process_mill3_brand2)
 (at-location_truck1_depot3)
 (current-process_mill2_brand2)
 (current-process_mill2_brand1)
 (current-process_mill1_brand3)
 (at-location_truck1_depot1)
 (current-process_mill3_brand3)
 (current-process_mill1_brand4)
 (at-location_truck2_depot2)
 (current-process_mill3_brand4)
 (current-process_mill2_brand4)
 (place-order_sugarcane_mill1)
 (available_mill1)
 (available_mill2)
 (at-location_truck2_mill2)
 (available_mill3)
 (at-location_truck2_mill1)
 (place-order_sugarcane_mill2)
)
(:functions   (labour-cost)
  (cost-process_mill1)
  (cost-process_mill2)
  (cost-process_mill3)
  (has-resource_sugarcane_mill1)
  (has-resource_sugarcane_mill2)
  (has-resource_sugarcane_mill3)
  (max-changing_mill1)
  (max-changing_mill2)
  (max-changing_mill3)
  (max-produce_mill1)
  (max-produce_mill2)
  (max-produce_mill3)
  (in-storage_mill1_brand1)
  (in-storage_mill1_brand3)
  (in-storage_mill1_brand4)
  (in-storage_mill2_brand1)
  (in-storage_mill2_brand2)
  (in-storage_mill2_brand3)
  (in-storage_mill3_brand1)
  (in-storage_mill3_brand2)
  (in-storage_mill3_brand4)
  (truck-cap_truck1)
  (truck-cap_truck2)
  (capacity_crane1)
  (capacity_crane2)
  (capacity_crane3)
  (service-time_crane1)
  (service-time_crane2)
  (service-time_crane3)
  (max-service-time_crane1)
  (max-service-time_crane2)
  (max-service-time_crane3)
  (in-truck-sugar_brand1_truck1)
  (in-truck-sugar_brand2_truck1)
  (in-truck-sugar_brand3_truck1)
  (in-truck-sugar_brand4_truck1)
  (in-truck-sugar_brand1_truck2)
  (in-truck-sugar_brand2_truck2)
  (in-truck-sugar_brand3_truck2)
  (in-truck-sugar_brand4_truck2)
  (in-storage_depot1_brand1)
  (in-storage_depot1_brand2)
  (in-storage_depot1_brand3)
  (in-storage_depot1_brand4)
  (in-storage_depot2_brand1)
  (in-storage_depot2_brand2)
  (in-storage_depot2_brand3)
  (in-storage_depot2_brand4)
  (in-storage_depot3_brand1)
  (in-storage_depot3_brand2)
  (in-storage_depot3_brand3)
  (in-storage_depot3_brand4)
  (mill-cost)
  (unharvest-field)
  (inventory-cost)
  (handling-cost)
)
(:action drivetruck__truck2__depot2__depot1
	:parameters ()
	:precondition (and  (at-location_truck2_depot2))
	:effect (and 
			(at-location_truck2_depot1)			(not (at-location_truck2_depot2))
))
(:action drivetruck__truck2__depot2__mill1
	:parameters ()
	:precondition (and  (at-location_truck2_depot2))
	:effect (and 
			(at-location_truck2_mill1)			(not (at-location_truck2_depot2))
))
(:action drivetruck__truck2__depot2__depot3
	:parameters ()
	:precondition (and  (at-location_truck2_depot2))
	:effect (and 
			(not (at-location_truck2_depot2))			(at-location_truck2_depot3)
))
(:action drivetruck__truck2__depot2__mill3
	:parameters ()
	:precondition (and  (at-location_truck2_depot2))
	:effect (and 
			(at-location_truck2_mill3)			(not (at-location_truck2_depot2))
))
(:action drivetruck__truck2__depot2__mill2
	:parameters ()
	:precondition (and  (at-location_truck2_depot2))
	:effect (and 
			(at-location_truck2_mill2)			(not (at-location_truck2_depot2))
))
(:action drivetruck__truck1__depot1__depot2
	:parameters ()
	:precondition (and  (at-location_truck1_depot1))
	:effect (and 
			(not (at-location_truck1_depot1))			(at-location_truck1_depot2)
))
(:action drivetruck__truck1__depot1__mill1
	:parameters ()
	:precondition (and  (at-location_truck1_depot1))
	:effect (and 
			(at-location_truck1_mill1)			(not (at-location_truck1_depot1))
))
(:action drivetruck__truck1__depot1__depot3
	:parameters ()
	:precondition (and  (at-location_truck1_depot1))
	:effect (and 
			(at-location_truck1_depot3)			(not (at-location_truck1_depot1))
))
(:action drivetruck__truck1__depot1__mill3
	:parameters ()
	:precondition (and  (at-location_truck1_depot1))
	:effect (and 
			(at-location_truck1_mill3)			(not (at-location_truck1_depot1))
))
(:action drivetruck__truck1__depot1__mill2
	:parameters ()
	:precondition (and  (at-location_truck1_depot1))
	:effect (and 
			(at-location_truck1_mill2)			(not (at-location_truck1_depot1))
))
(:action changeproduct__mill1__brand1__brand4
	:parameters ()
	:precondition (and  (current-process_mill1_brand1))
	:effect (and 
			(decrease (max-changing_mill1) 1.0)			(current-process_mill1_brand4)			(not (current-process_mill1_brand1))
))
(:action producesugar_max__sugarcane__mill3__brand1
	:parameters ()
	:precondition (and (>= (+ (has-resource_sugarcane_mill3) -10.0 ) 0.0) (current-process_mill3_brand1) (available_mill3)(> (max-changing_mill3) 0.0))
	:effect (and 
			(decrease (has-resource_sugarcane_mill3) 10.0)			(increase (in-storage_mill3_brand1) 10.0)			(increase (mill-cost) 30.0)			(not (available_mill3))			(busy_mill3)
))
(:action changeproduct__mill1__brand1__brand3
	:parameters ()
	:precondition (and  (current-process_mill1_brand1))
	:effect (and 
			(decrease (max-changing_mill1) 1.0)			(current-process_mill1_brand3)			(not (current-process_mill1_brand1))
))
(:action changeproduct__mill2__brand3__brand4
	:parameters ()
	:precondition (and  (current-process_mill2_brand3))
	:effect (and 
			(decrease (max-changing_mill2) 1.0)			(current-process_mill2_brand4)			(not (current-process_mill2_brand3))
))
(:action changeproduct__mill1__brand1__brand2
	:parameters ()
	:precondition (and  (current-process_mill1_brand1))
	:effect (and 
			(decrease (max-changing_mill1) 1.0)			(current-process_mill1_brand2)			(not (current-process_mill1_brand1))
))
(:action changeproduct__mill2__brand3__brand2
	:parameters ()
	:precondition (and  (current-process_mill2_brand3))
	:effect (and 
			(decrease (max-changing_mill2) 1.0)			(current-process_mill2_brand2)			(not (current-process_mill2_brand3))
))
(:action changeproduct__mill2__brand3__brand1
	:parameters ()
	:precondition (and  (current-process_mill2_brand3))
	:effect (and 
			(decrease (max-changing_mill2) 1.0)			(current-process_mill2_brand1)			(not (current-process_mill2_brand3))
))
(:action producesugar__sugarcane__mill3__brand1
	:parameters ()
	:precondition (and  (current-process_mill3_brand1) (available_mill3)(> (has-resource_sugarcane_mill3) 0.0)(> (max-changing_mill3) 0.0))
	:effect (and 
			(decrease (has-resource_sugarcane_mill3) 1.0)			(increase (mill-cost) 6.0)			(increase (in-storage_mill3_brand1) 1.0)			(not (available_mill3))			(busy_mill3)
))
(:action changeproduct__mill3__brand1__brand4
	:parameters ()
	:precondition (and  (current-process_mill3_brand1))
	:effect (and 
			(decrease (max-changing_mill3) 1.0)			(not (current-process_mill3_brand1))			(current-process_mill3_brand4)
))
(:action changeproduct__mill3__brand1__brand3
	:parameters ()
	:precondition (and  (current-process_mill3_brand1))
	:effect (and 
			(decrease (max-changing_mill3) 1.0)			(not (current-process_mill3_brand1))			(current-process_mill3_brand3)
))
(:action changeproduct__mill3__brand1__brand2
	:parameters ()
	:precondition (and  (current-process_mill3_brand1))
	:effect (and 
			(decrease (max-changing_mill3) 1.0)			(not (current-process_mill3_brand1))			(current-process_mill3_brand2)
))
(:action ordersugarcane__sugarcane__mill1
	:parameters ()
	:precondition (and (>= (has-resource_sugarcane_mill1) 0.0)(>= (*   (has-resource_sugarcane_mill1) -1.0) 0.0))
	:effect (and 
			(place-order_sugarcane_mill1)
))
(:action ordersugarcane__sugarcane__mill2
	:parameters ()
	:precondition (and (>= (*   (has-resource_sugarcane_mill2) -1.0) 0.0)(>= (has-resource_sugarcane_mill2) 0.0))
	:effect (and 
			(place-order_sugarcane_mill2)
))
(:action drivetruck__truck2__depot3__depot2
	:parameters ()
	:precondition (and  (at-location_truck2_depot3))
	:effect (and 
			(not (at-location_truck2_depot3))			(at-location_truck2_depot2)
))
(:action drivetruck__truck2__depot3__mill2
	:parameters ()
	:precondition (and  (at-location_truck2_depot3))
	:effect (and 
			(not (at-location_truck2_depot3))			(at-location_truck2_mill2)
))
(:action drivetruck__truck2__depot3__mill1
	:parameters ()
	:precondition (and  (at-location_truck2_depot3))
	:effect (and 
			(not (at-location_truck2_depot3))			(at-location_truck2_mill1)
))
(:action drivetruck__truck2__depot3__mill3
	:parameters ()
	:precondition (and  (at-location_truck2_depot3))
	:effect (and 
			(not (at-location_truck2_depot3))			(at-location_truck2_mill3)
))
(:action drivetruck__truck2__depot3__depot1
	:parameters ()
	:precondition (and  (at-location_truck2_depot3))
	:effect (and 
			(not (at-location_truck2_depot3))			(at-location_truck2_depot1)
))
(:action drivetruck__truck2__depot1__depot3
	:parameters ()
	:precondition (and  (at-location_truck2_depot1))
	:effect (and 
			(not (at-location_truck2_depot1))			(at-location_truck2_depot3)
))
(:action drivetruck__truck2__depot1__depot2
	:parameters ()
	:precondition (and  (at-location_truck2_depot1))
	:effect (and 
			(at-location_truck2_depot2)			(not (at-location_truck2_depot1))
))
(:action drivetruck__truck2__depot1__mill2
	:parameters ()
	:precondition (and  (at-location_truck2_depot1))
	:effect (and 
			(not (at-location_truck2_depot1))			(at-location_truck2_mill2)
))
(:action drivetruck__truck2__depot1__mill1
	:parameters ()
	:precondition (and  (at-location_truck2_depot1))
	:effect (and 
			(not (at-location_truck2_depot1))			(at-location_truck2_mill1)
))
(:action drivetruck__truck2__depot1__mill3
	:parameters ()
	:precondition (and  (at-location_truck2_depot1))
	:effect (and 
			(at-location_truck2_mill3)			(not (at-location_truck2_depot1))
))
(:action drivetruck__truck1__mill1__mill2
	:parameters ()
	:precondition (and  (at-location_truck1_mill1))
	:effect (and 
			(at-location_truck1_mill2)			(not (at-location_truck1_mill1))
))
(:action drivetruck__truck2__mill3__mill2
	:parameters ()
	:precondition (and  (at-location_truck2_mill3))
	:effect (and 
			(not (at-location_truck2_mill3))			(at-location_truck2_mill2)
))
(:action drivetruck__truck1__mill1__mill3
	:parameters ()
	:precondition (and  (at-location_truck1_mill1))
	:effect (and 
			(not (at-location_truck1_mill1))			(at-location_truck1_mill3)
))
(:action changeproduct__mill1__brand4__brand2
	:parameters ()
	:precondition (and  (current-process_mill1_brand4))
	:effect (and 
			(decrease (max-changing_mill1) 1.0)			(current-process_mill1_brand2)			(not (current-process_mill1_brand4))
))
(:action changeproduct__mill1__brand4__brand1
	:parameters ()
	:precondition (and  (current-process_mill1_brand4))
	:effect (and 
			(decrease (max-changing_mill1) 1.0)			(current-process_mill1_brand1)			(not (current-process_mill1_brand4))
))
(:action drivetruck__truck1__mill1__depot1
	:parameters ()
	:precondition (and  (at-location_truck1_mill1))
	:effect (and 
			(not (at-location_truck1_mill1))			(at-location_truck1_depot1)
))
(:action drivetruck__truck2__mill3__depot2
	:parameters ()
	:precondition (and  (at-location_truck2_mill3))
	:effect (and 
			(at-location_truck2_depot2)			(not (at-location_truck2_mill3))
))
(:action drivetruck__truck2__mill3__depot1
	:parameters ()
	:precondition (and  (at-location_truck2_mill3))
	:effect (and 
			(not (at-location_truck2_mill3))			(at-location_truck2_depot1)
))
(:action drivetruck__truck2__mill3__mill1
	:parameters ()
	:precondition (and  (at-location_truck2_mill3))
	:effect (and 
			(not (at-location_truck2_mill3))			(at-location_truck2_mill1)
))
(:action drivetruck__truck1__mill1__depot3
	:parameters ()
	:precondition (and  (at-location_truck1_mill1))
	:effect (and 
			(at-location_truck1_depot3)			(not (at-location_truck1_mill1))
))
(:action changeproduct__mill1__brand4__brand3
	:parameters ()
	:precondition (and  (current-process_mill1_brand4))
	:effect (and 
			(decrease (max-changing_mill1) 1.0)			(current-process_mill1_brand3)			(not (current-process_mill1_brand4))
))
(:action drivetruck__truck1__mill1__depot2
	:parameters ()
	:precondition (and  (at-location_truck1_mill1))
	:effect (and 
			(not (at-location_truck1_mill1))			(at-location_truck1_depot2)
))
(:action drivetruck__truck2__mill3__depot3
	:parameters ()
	:precondition (and  (at-location_truck2_mill3))
	:effect (and 
			(not (at-location_truck2_mill3))			(at-location_truck2_depot3)
))
(:action drivetruck__truck1__mill2__mill3
	:parameters ()
	:precondition (and  (at-location_truck1_mill2))
	:effect (and 
			(not (at-location_truck1_mill2))			(at-location_truck1_mill3)
))
(:action changeproduct__mill1__brand3__brand1
	:parameters ()
	:precondition (and  (current-process_mill1_brand3))
	:effect (and 
			(decrease (max-changing_mill1) 1.0)			(current-process_mill1_brand1)			(not (current-process_mill1_brand3))
))
(:action drivetruck__truck1__mill2__depot2
	:parameters ()
	:precondition (and  (at-location_truck1_mill2))
	:effect (and 
			(not (at-location_truck1_mill2))			(at-location_truck1_depot2)
))
(:action changeproduct__mill1__brand3__brand4
	:parameters ()
	:precondition (and  (current-process_mill1_brand3))
	:effect (and 
			(decrease (max-changing_mill1) 1.0)			(current-process_mill1_brand4)			(not (current-process_mill1_brand3))
))
(:action drivetruck__truck1__mill2__depot1
	:parameters ()
	:precondition (and  (at-location_truck1_mill2))
	:effect (and 
			(not (at-location_truck1_mill2))			(at-location_truck1_depot1)
))
(:action drivetruck__truck1__mill2__mill1
	:parameters ()
	:precondition (and  (at-location_truck1_mill2))
	:effect (and 
			(at-location_truck1_mill1)			(not (at-location_truck1_mill2))
))
(:action changeproduct__mill1__brand3__brand2
	:parameters ()
	:precondition (and  (current-process_mill1_brand3))
	:effect (and 
			(decrease (max-changing_mill1) 1.0)			(current-process_mill1_brand2)			(not (current-process_mill1_brand3))
))
(:action drivetruck__truck1__mill2__depot3
	:parameters ()
	:precondition (and  (at-location_truck1_mill2))
	:effect (and 
			(at-location_truck1_depot3)			(not (at-location_truck1_mill2))
))
(:action loadtruckcrane__brand1__truck2__mill3__crane3
	:parameters ()
	:precondition (and (>= (+ (truck-cap_truck2) -5.0 ) 0.0)(>= (+ (in-storage_mill3_brand1) -5.0 ) 0.0) (at-location_truck2_mill3))
	:effect (and 
			(decrease (truck-cap_truck2) 5.0)			(decrease (in-storage_mill3_brand1) 5.0)			(increase (handling-cost) 10.0)			(increase (in-truck-sugar_brand1_truck2) 5.0)
))
(:action drivetruck__truck1__depot2__depot3
	:parameters ()
	:precondition (and  (at-location_truck1_depot2))
	:effect (and 
			(at-location_truck1_depot3)			(not (at-location_truck1_depot2))
))
(:action drivetruck__truck2__mill1__depot3
	:parameters ()
	:precondition (and  (at-location_truck2_mill1))
	:effect (and 
			(at-location_truck2_depot3)			(not (at-location_truck2_mill1))
))
(:action drivetruck__truck2__mill1__mill3
	:parameters ()
	:precondition (and  (at-location_truck2_mill1))
	:effect (and 
			(at-location_truck2_mill3)			(not (at-location_truck2_mill1))
))
(:action drivetruck__truck1__depot2__mill2
	:parameters ()
	:precondition (and  (at-location_truck1_depot2))
	:effect (and 
			(at-location_truck1_mill2)			(not (at-location_truck1_depot2))
))
(:action drivetruck__truck2__mill1__mill2
	:parameters ()
	:precondition (and  (at-location_truck2_mill1))
	:effect (and 
			(at-location_truck2_mill2)			(not (at-location_truck2_mill1))
))
(:action drivetruck__truck1__depot2__mill1
	:parameters ()
	:precondition (and  (at-location_truck1_depot2))
	:effect (and 
			(at-location_truck1_mill1)			(not (at-location_truck1_depot2))
))
(:action drivetruck__truck1__depot2__mill3
	:parameters ()
	:precondition (and  (at-location_truck1_depot2))
	:effect (and 
			(at-location_truck1_mill3)			(not (at-location_truck1_depot2))
))
(:action changeproduct__mill2__brand4__brand1
	:parameters ()
	:precondition (and  (current-process_mill2_brand4))
	:effect (and 
			(decrease (max-changing_mill2) 1.0)			(not (current-process_mill2_brand4))			(current-process_mill2_brand1)
))
(:action changeproduct__mill1__brand2__brand4
	:parameters ()
	:precondition (and  (current-process_mill1_brand2))
	:effect (and 
			(decrease (max-changing_mill1) 1.0)			(current-process_mill1_brand4)			(not (current-process_mill1_brand2))
))
(:action changeproduct__mill1__brand2__brand3
	:parameters ()
	:precondition (and  (current-process_mill1_brand2))
	:effect (and 
			(decrease (max-changing_mill1) 1.0)			(current-process_mill1_brand3)			(not (current-process_mill1_brand2))
))
(:action changeproduct__mill2__brand4__brand3
	:parameters ()
	:precondition (and  (current-process_mill2_brand4))
	:effect (and 
			(decrease (max-changing_mill2) 1.0)			(not (current-process_mill2_brand4))			(current-process_mill2_brand3)
))
(:action drivetruck__truck2__mill1__depot2
	:parameters ()
	:precondition (and  (at-location_truck2_mill1))
	:effect (and 
			(at-location_truck2_depot2)			(not (at-location_truck2_mill1))
))
(:action drivetruck__truck1__depot2__depot1
	:parameters ()
	:precondition (and  (at-location_truck1_depot2))
	:effect (and 
			(at-location_truck1_depot1)			(not (at-location_truck1_depot2))
))
(:action changeproduct__mill1__brand2__brand1
	:parameters ()
	:precondition (and  (current-process_mill1_brand2))
	:effect (and 
			(decrease (max-changing_mill1) 1.0)			(current-process_mill1_brand1)			(not (current-process_mill1_brand2))
))
(:action changeproduct__mill2__brand4__brand2
	:parameters ()
	:precondition (and  (current-process_mill2_brand4))
	:effect (and 
			(decrease (max-changing_mill2) 1.0)			(current-process_mill2_brand2)			(not (current-process_mill2_brand4))
))
(:action drivetruck__truck2__mill1__depot1
	:parameters ()
	:precondition (and  (at-location_truck2_mill1))
	:effect (and 
			(at-location_truck2_depot1)			(not (at-location_truck2_mill1))
))
(:action drivetruck__truck1__depot3__mill1
	:parameters ()
	:precondition (and  (at-location_truck1_depot3))
	:effect (and 
			(at-location_truck1_mill1)			(not (at-location_truck1_depot3))
))
(:action drivetruck__truck2__mill2__mill1
	:parameters ()
	:precondition (and  (at-location_truck2_mill2))
	:effect (and 
			(not (at-location_truck2_mill2))			(at-location_truck2_mill1)
))
(:action sugarcanefarm__sugarcane__mill1
	:parameters ()
	:precondition (and (> (unharvest-field) 0.0) (place-order_sugarcane_mill1))
	:effect (and 
			(decrease (unharvest-field) 1.0)			(increase (has-resource_sugarcane_mill1) 5.0)			(increase (inventory-cost) 10.0)			(not (place-order_sugarcane_mill1))
))
(:action drivetruck__truck1__depot3__mill3
	:parameters ()
	:precondition (and  (at-location_truck1_depot3))
	:effect (and 
			(not (at-location_truck1_depot3))			(at-location_truck1_mill3)
))
(:action drivetruck__truck2__mill2__mill3
	:parameters ()
	:precondition (and  (at-location_truck2_mill2))
	:effect (and 
			(not (at-location_truck2_mill2))			(at-location_truck2_mill3)
))
(:action drivetruck__truck1__depot3__mill2
	:parameters ()
	:precondition (and  (at-location_truck1_depot3))
	:effect (and 
			(at-location_truck1_mill2)			(not (at-location_truck1_depot3))
))
(:action producesugar_max__sugarcane__mill3__brand2
	:parameters ()
	:precondition (and (>= (+ (has-resource_sugarcane_mill3) -10.0 ) 0.0) (available_mill3) (current-process_mill3_brand2)(> (max-changing_mill3) 0.0))
	:effect (and 
			(decrease (has-resource_sugarcane_mill3) 10.0)			(increase (mill-cost) 30.0)			(increase (in-storage_mill3_brand2) 10.0)			(not (available_mill3))			(busy_mill3)
))
(:action drivetruck__truck2__mill2__depot1
	:parameters ()
	:precondition (and  (at-location_truck2_mill2))
	:effect (and 
			(not (at-location_truck2_mill2))			(at-location_truck2_depot1)
))
(:action drivetruck__truck2__mill2__depot3
	:parameters ()
	:precondition (and  (at-location_truck2_mill2))
	:effect (and 
			(not (at-location_truck2_mill2))			(at-location_truck2_depot3)
))
(:action drivetruck__truck1__depot3__depot2
	:parameters ()
	:precondition (and  (at-location_truck1_depot3))
	:effect (and 
			(not (at-location_truck1_depot3))			(at-location_truck1_depot2)
))
(:action sugarcanefarm__sugarcane__mill2
	:parameters ()
	:precondition (and (> (unharvest-field) 0.0) (place-order_sugarcane_mill2))
	:effect (and 
			(decrease (unharvest-field) 1.0)			(increase (has-resource_sugarcane_mill2) 5.0)			(increase (inventory-cost) 10.0)			(not (place-order_sugarcane_mill2))
))
(:action drivetruck__truck2__mill2__depot2
	:parameters ()
	:precondition (and  (at-location_truck2_mill2))
	:effect (and 
			(not (at-location_truck2_mill2))			(at-location_truck2_depot2)
))
(:action drivetruck__truck1__depot3__depot1
	:parameters ()
	:precondition (and  (at-location_truck1_depot3))
	:effect (and 
			(not (at-location_truck1_depot3))			(at-location_truck1_depot1)
))
(:action loadtruckcrane__brand1__truck1__mill3__crane3
	:parameters ()
	:precondition (and (>= (+ (in-storage_mill3_brand1) -5.0 ) 0.0)(>= (+ (truck-cap_truck1) -5.0 ) 0.0) (at-location_truck1_mill3))
	:effect (and 
			(decrease (truck-cap_truck1) 5.0)			(decrease (in-storage_mill3_brand1) 5.0)			(increase (in-truck-sugar_brand1_truck1) 5.0)			(increase (handling-cost) 10.0)
))
(:action changeproduct__mill2__brand2__brand4
	:parameters ()
	:precondition (and  (current-process_mill2_brand2))
	:effect (and 
			(decrease (max-changing_mill2) 1.0)			(current-process_mill2_brand4)			(not (current-process_mill2_brand2))
))
(:action loadtruckmanual__brand4__truck1__mill3
	:parameters ()
	:precondition (and (> (truck-cap_truck1) 0.0) (at-location_truck1_mill3)(> (in-storage_mill3_brand4) 0.0))
	:effect (and 
			(decrease (truck-cap_truck1) 1.0)			(increase (in-truck-sugar_brand4_truck1) 1.0)			(increase (handling-cost) 1.0)			(decrease (in-storage_mill3_brand4) 1.0)
))
(:action changeproduct__mill2__brand2__brand3
	:parameters ()
	:precondition (and  (current-process_mill2_brand2))
	:effect (and 
			(decrease (max-changing_mill2) 1.0)			(current-process_mill2_brand3)			(not (current-process_mill2_brand2))
))
(:action changeproduct__mill3__brand4__brand3
	:parameters ()
	:precondition (and  (current-process_mill3_brand4))
	:effect (and 
			(decrease (max-changing_mill3) 1.0)			(not (current-process_mill3_brand4))			(current-process_mill3_brand3)
))
(:action changeproduct__mill2__brand2__brand1
	:parameters ()
	:precondition (and  (current-process_mill2_brand2))
	:effect (and 
			(decrease (max-changing_mill2) 1.0)			(current-process_mill2_brand1)			(not (current-process_mill2_brand2))
))
(:action changeproduct__mill3__brand4__brand2
	:parameters ()
	:precondition (and  (current-process_mill3_brand4))
	:effect (and 
			(decrease (max-changing_mill3) 1.0)			(not (current-process_mill3_brand4))			(current-process_mill3_brand2)
))
(:action changeproduct__mill3__brand4__brand1
	:parameters ()
	:precondition (and  (current-process_mill3_brand4))
	:effect (and 
			(decrease (max-changing_mill3) 1.0)			(not (current-process_mill3_brand4))			(current-process_mill3_brand1)
))
(:action loadtruckmanual__brand4__truck2__mill3
	:parameters ()
	:precondition (and  (at-location_truck2_mill3)(> (in-storage_mill3_brand4) 0.0)(> (truck-cap_truck2) 0.0))
	:effect (and 
			(increase (in-truck-sugar_brand4_truck2) 1.0)			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)			(decrease (in-storage_mill3_brand4) 1.0)
))
(:action changeproduct__mill2__brand1__brand4
	:parameters ()
	:precondition (and  (current-process_mill2_brand1))
	:effect (and 
			(decrease (max-changing_mill2) 1.0)			(not (current-process_mill2_brand1))			(current-process_mill2_brand4)
))
(:action changeproduct__mill2__brand1__brand3
	:parameters ()
	:precondition (and  (current-process_mill2_brand1))
	:effect (and 
			(decrease (max-changing_mill2) 1.0)			(not (current-process_mill2_brand1))			(current-process_mill2_brand3)
))
(:action changeproduct__mill3__brand3__brand4
	:parameters ()
	:precondition (and  (current-process_mill3_brand3))
	:effect (and 
			(decrease (max-changing_mill3) 1.0)			(current-process_mill3_brand4)			(not (current-process_mill3_brand3))
))
(:action changeproduct__mill2__brand1__brand2
	:parameters ()
	:precondition (and  (current-process_mill2_brand1))
	:effect (and 
			(decrease (max-changing_mill2) 1.0)			(current-process_mill2_brand2)			(not (current-process_mill2_brand1))
))
(:action changeproduct__mill3__brand3__brand2
	:parameters ()
	:precondition (and  (current-process_mill3_brand3))
	:effect (and 
			(decrease (max-changing_mill3) 1.0)			(not (current-process_mill3_brand3))			(current-process_mill3_brand2)
))
(:action changeproduct__mill3__brand3__brand1
	:parameters ()
	:precondition (and  (current-process_mill3_brand3))
	:effect (and 
			(decrease (max-changing_mill3) 1.0)			(current-process_mill3_brand1)			(not (current-process_mill3_brand3))
))
(:action changeproduct__mill3__brand2__brand4
	:parameters ()
	:precondition (and  (current-process_mill3_brand2))
	:effect (and 
			(decrease (max-changing_mill3) 1.0)			(current-process_mill3_brand4)			(not (current-process_mill3_brand2))
))
(:action changeproduct__mill3__brand2__brand3
	:parameters ()
	:precondition (and  (current-process_mill3_brand2))
	:effect (and 
			(decrease (max-changing_mill3) 1.0)			(current-process_mill3_brand3)			(not (current-process_mill3_brand2))
))
(:action producesugar__sugarcane__mill3__brand2
	:parameters ()
	:precondition (and  (available_mill3)(> (has-resource_sugarcane_mill3) 0.0) (current-process_mill3_brand2)(> (max-changing_mill3) 0.0))
	:effect (and 
			(decrease (has-resource_sugarcane_mill3) 1.0)			(increase (in-storage_mill3_brand2) 1.0)			(increase (mill-cost) 6.0)			(not (available_mill3))			(busy_mill3)
))
(:action drivetruck__truck1__mill3__depot1
	:parameters ()
	:precondition (and  (at-location_truck1_mill3))
	:effect (and 
			(at-location_truck1_depot1)			(not (at-location_truck1_mill3))
))
(:action drivetruck__truck1__mill3__depot3
	:parameters ()
	:precondition (and  (at-location_truck1_mill3))
	:effect (and 
			(at-location_truck1_depot3)			(not (at-location_truck1_mill3))
))
(:action changeproduct__mill3__brand2__brand1
	:parameters ()
	:precondition (and  (current-process_mill3_brand2))
	:effect (and 
			(decrease (max-changing_mill3) 1.0)			(current-process_mill3_brand1)			(not (current-process_mill3_brand2))
))
(:action drivetruck__truck1__mill3__depot2
	:parameters ()
	:precondition (and  (at-location_truck1_mill3))
	:effect (and 
			(not (at-location_truck1_mill3))			(at-location_truck1_depot2)
))
(:action drivetruck__truck1__mill3__mill2
	:parameters ()
	:precondition (and  (at-location_truck1_mill3))
	:effect (and 
			(at-location_truck1_mill2)			(not (at-location_truck1_mill3))
))
(:action drivetruck__truck1__mill3__mill1
	:parameters ()
	:precondition (and  (at-location_truck1_mill3))
	:effect (and 
			(at-location_truck1_mill1)			(not (at-location_truck1_mill3))
))
(:action sugarcanemills__sugarcane__mill1__mill3
	:parameters ()
	:precondition (and  (place-order_sugarcane_mill1)(> (has-resource_sugarcane_mill3) 0.0))
	:effect (and 
			(decrease (has-resource_sugarcane_mill3) 1.0)			(increase (has-resource_sugarcane_mill1) 1.0)			(decrease (inventory-cost) 1.0)			(not (place-order_sugarcane_mill1))
))
(:action settingmachine__mill3
	:parameters ()
	:precondition (and  (busy_mill3))
	:effect (and 
			(not (busy_mill3))			(available_mill3)
))
(:action sugarcanemills__sugarcane__mill2__mill3
	:parameters ()
	:precondition (and  (place-order_sugarcane_mill2)(> (has-resource_sugarcane_mill3) 0.0))
	:effect (and 
			(increase (has-resource_sugarcane_mill2) 1.0)			(decrease (has-resource_sugarcane_mill3) 1.0)			(decrease (inventory-cost) 1.0)			(not (place-order_sugarcane_mill2))
))
(:action loadtruckmanual__brand1__truck1__mill3
	:parameters ()
	:precondition (and (> (truck-cap_truck1) 0.0) (at-location_truck1_mill3)(> (in-storage_mill3_brand1) 0.0))
	:effect (and 
			(decrease (truck-cap_truck1) 1.0)			(decrease (in-storage_mill3_brand1) 1.0)			(increase (in-truck-sugar_brand1_truck1) 1.0)			(increase (handling-cost) 1.0)
))
(:action loadtruckmanual__brand1__truck2__mill3
	:parameters ()
	:precondition (and  (at-location_truck2_mill3)(> (truck-cap_truck2) 0.0)(> (in-storage_mill3_brand1) 0.0))
	:effect (and 
			(increase (in-truck-sugar_brand1_truck2) 1.0)			(decrease (in-storage_mill3_brand1) 1.0)			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)
))
(:action ordersugarcane__sugarcane__mill3
	:parameters ()
	:precondition (and (>= (has-resource_sugarcane_mill3) 0.0)(>= (*   (has-resource_sugarcane_mill3) -1.0) 0.0))
	:effect (and 
			(place-order_sugarcane_mill3)
))
(:action loadtruckcrane__brand2__truck1__mill3__crane3
	:parameters ()
	:precondition (and (>= (+ (truck-cap_truck1) -5.0 ) 0.0) (at-location_truck1_mill3)(>= (+ (in-storage_mill3_brand2) -5.0 ) 0.0))
	:effect (and 
			(decrease (in-storage_mill3_brand2) 5.0)			(increase (in-truck-sugar_brand2_truck1) 5.0)			(decrease (truck-cap_truck1) 5.0)			(increase (handling-cost) 10.0)
))
(:action unloadtruck__brand1__truck2__mill3
	:parameters ()
	:precondition (and  (at-location_truck2_mill3)(> (in-truck-sugar_brand1_truck2) 0.0))
	:effect (and 
			(increase (truck-cap_truck2) 1.0)			(decrease (in-truck-sugar_brand1_truck2) 1.0)			(increase (in-storage_mill3_brand1) 1.0)
))
(:action unloadtruck__brand1__truck2__depot1
	:parameters ()
	:precondition (and  (at-location_truck2_depot1)(> (in-truck-sugar_brand1_truck2) 0.0))
	:effect (and 
			(increase (truck-cap_truck2) 1.0)			(decrease (in-truck-sugar_brand1_truck2) 1.0)			(increase (in-storage_depot1_brand1) 1.0)
))
(:action unloadtruck__brand1__truck2__mill1
	:parameters ()
	:precondition (and (> (in-truck-sugar_brand1_truck2) 0.0) (at-location_truck2_mill1))
	:effect (and 
			(increase (truck-cap_truck2) 1.0)			(decrease (in-truck-sugar_brand1_truck2) 1.0)			(increase (in-storage_mill1_brand1) 1.0)
))
(:action unloadtruck__brand1__truck2__mill2
	:parameters ()
	:precondition (and (> (in-truck-sugar_brand1_truck2) 0.0) (at-location_truck2_mill2))
	:effect (and 
			(increase (truck-cap_truck2) 1.0)			(increase (in-storage_mill2_brand1) 1.0)			(decrease (in-truck-sugar_brand1_truck2) 1.0)
))
(:action unloadtruck__brand1__truck2__depot2
	:parameters ()
	:precondition (and  (at-location_truck2_depot2)(> (in-truck-sugar_brand1_truck2) 0.0))
	:effect (and 
			(increase (truck-cap_truck2) 1.0)			(decrease (in-truck-sugar_brand1_truck2) 1.0)			(increase (in-storage_depot2_brand1) 1.0)
))
(:action unloadtruck__brand1__truck2__depot3
	:parameters ()
	:precondition (and (> (in-truck-sugar_brand1_truck2) 0.0) (at-location_truck2_depot3))
	:effect (and 
			(increase (in-storage_depot3_brand1) 1.0)			(increase (truck-cap_truck2) 1.0)			(decrease (in-truck-sugar_brand1_truck2) 1.0)
))
(:action producesugar__sugarcane__mill1__brand4
	:parameters ()
	:precondition (and  (current-process_mill1_brand4)(> (has-resource_sugarcane_mill1) 0.0)(> (max-changing_mill1) 0.0) (available_mill1))
	:effect (and 
			(decrease (has-resource_sugarcane_mill1) 1.0)			(increase (mill-cost) 1.0)			(increase (in-storage_mill1_brand4) 1.0)			(not (available_mill1))			(busy_mill1)
))
(:action producesugar__sugarcane__mill1__brand3
	:parameters ()
	:precondition (and  (current-process_mill1_brand3)(> (has-resource_sugarcane_mill1) 0.0)(> (max-changing_mill1) 0.0) (available_mill1))
	:effect (and 
			(increase (in-storage_mill1_brand3) 1.0)			(decrease (has-resource_sugarcane_mill1) 1.0)			(increase (mill-cost) 1.0)			(not (available_mill1))			(busy_mill1)
))
(:action producesugar__sugarcane__mill1__brand1
	:parameters ()
	:precondition (and  (current-process_mill1_brand1)(> (has-resource_sugarcane_mill1) 0.0)(> (max-changing_mill1) 0.0) (available_mill1))
	:effect (and 
			(decrease (has-resource_sugarcane_mill1) 1.0)			(increase (in-storage_mill1_brand1) 1.0)			(increase (mill-cost) 1.0)			(not (available_mill1))			(busy_mill1)
))
(:action producesugar_max__sugarcane__mill1__brand1
	:parameters ()
	:precondition (and (>= (+ (has-resource_sugarcane_mill1) -5.0 ) 0.0) (current-process_mill1_brand1)(> (max-changing_mill1) 0.0) (available_mill1))
	:effect (and 
			(decrease (has-resource_sugarcane_mill1) 5.0)			(increase (mill-cost) 5.0)			(increase (in-storage_mill1_brand1) 5.0)			(not (available_mill1))			(busy_mill1)
))
(:action producesugar_max__sugarcane__mill1__brand3
	:parameters ()
	:precondition (and (>= (+ (has-resource_sugarcane_mill1) -5.0 ) 0.0) (current-process_mill1_brand3)(> (max-changing_mill1) 0.0) (available_mill1))
	:effect (and 
			(decrease (has-resource_sugarcane_mill1) 5.0)			(increase (mill-cost) 5.0)			(increase (in-storage_mill1_brand3) 5.0)			(not (available_mill1))			(busy_mill1)
))
(:action producesugar_max__sugarcane__mill1__brand4
	:parameters ()
	:precondition (and (>= (+ (has-resource_sugarcane_mill1) -5.0 ) 0.0) (current-process_mill1_brand4)(> (max-changing_mill1) 0.0) (available_mill1))
	:effect (and 
			(decrease (has-resource_sugarcane_mill1) 5.0)			(increase (mill-cost) 5.0)			(increase (in-storage_mill1_brand4) 5.0)			(not (available_mill1))			(busy_mill1)
))
(:action producesugar_max__sugarcane__mill2__brand2
	:parameters ()
	:precondition (and (>= (+ (has-resource_sugarcane_mill2) -8.0 ) 0.0) (current-process_mill2_brand2)(> (max-changing_mill2) 0.0) (available_mill2))
	:effect (and 
			(increase (in-storage_mill2_brand2) 8.0)			(increase (mill-cost) 15.0)			(decrease (has-resource_sugarcane_mill2) 8.0)			(not (available_mill2))			(busy_mill2)
))

(:action producesugar_max__sugarcane__mill2__brand3
	:parameters ()
	:precondition (and (>= (+ (has-resource_sugarcane_mill2) -8.0 ) 0.0) (current-process_mill2_brand3)(> (max-changing_mill2) 0.0) (available_mill2))
	:effect (and 
			(increase (mill-cost) 15.0)			(decrease (has-resource_sugarcane_mill2) 8.0)			(increase (in-storage_mill2_brand3) 8.0)			(not (available_mill2))			(busy_mill2)
))
(:action loadtruckcrane__brand2__truck2__mill3__crane3
	:parameters ()
	:precondition (and (>= (+ (truck-cap_truck2) -5.0 ) 0.0) (at-location_truck2_mill3)(>= (+ (in-storage_mill3_brand2) -5.0 ) 0.0))
	:effect (and 
			(decrease (in-storage_mill3_brand2) 5.0)			(decrease (truck-cap_truck2) 5.0)			(increase (in-truck-sugar_brand2_truck2) 5.0)			(increase (handling-cost) 10.0)
))
(:action sugarcanefarm__sugarcane__mill3
	:parameters ()
	:precondition (and  (place-order_sugarcane_mill3)(> (unharvest-field) 0.0))
	:effect (and 
			(decrease (unharvest-field) 1.0)			(increase (has-resource_sugarcane_mill3) 5.0)			(increase (inventory-cost) 10.0)			(not (place-order_sugarcane_mill3))
))

(:action unloadtruck__brand4__truck2__mill3
	:parameters ()
	:precondition (and (> (in-truck-sugar_brand4_truck2) 0.0) (at-location_truck2_mill3))
	:effect (and 
			(increase (in-storage_mill3_brand4) 1.0)			(increase (truck-cap_truck2) 1.0)			(decrease (in-truck-sugar_brand4_truck2) 1.0)
))
(:action unloadtruck__brand4__truck2__depot3
	:parameters ()
	:precondition (and (> (in-truck-sugar_brand4_truck2) 0.0) (at-location_truck2_depot3))
	:effect (and 
			(increase (in-storage_depot3_brand4) 1.0)			(increase (truck-cap_truck2) 1.0)			(decrease (in-truck-sugar_brand4_truck2) 1.0)
))
(:action unloadtruck__brand4__truck2__mill1
	:parameters ()
	:precondition (and (> (in-truck-sugar_brand4_truck2) 0.0) (at-location_truck2_mill1))
	:effect (and 
			(increase (truck-cap_truck2) 1.0)			(decrease (in-truck-sugar_brand4_truck2) 1.0)			(increase (in-storage_mill1_brand4) 1.0)
))
(:action unloadtruck__brand4__truck2__depot1
	:parameters ()
	:precondition (and (> (in-truck-sugar_brand4_truck2) 0.0) (at-location_truck2_depot1))
	:effect (and 
			(increase (truck-cap_truck2) 1.0)			(decrease (in-truck-sugar_brand4_truck2) 1.0)			(increase (in-storage_depot1_brand4) 1.0)
))
(:action unloadtruck__brand4__truck2__depot2
	:parameters ()
	:precondition (and (> (in-truck-sugar_brand4_truck2) 0.0) (at-location_truck2_depot2))
	:effect (and 
			(increase (truck-cap_truck2) 1.0)			(decrease (in-truck-sugar_brand4_truck2) 1.0)			(increase (in-storage_depot2_brand4) 1.0)
))
(:action unloadtruck__brand4__truck1__mill1
	:parameters ()
	:precondition (and  (at-location_truck1_mill1)(> (in-truck-sugar_brand4_truck1) 0.0))
	:effect (and 
			(decrease (in-truck-sugar_brand4_truck1) 1.0)			(increase (truck-cap_truck1) 1.0)			(increase (in-storage_mill1_brand4) 1.0)
))

(:action unloadtruck__brand4__truck1__depot2
	:parameters ()
	:precondition (and (> (in-truck-sugar_brand4_truck1) 0.0) (at-location_truck1_depot2))
	:effect (and 
			(decrease (in-truck-sugar_brand4_truck1) 1.0)			(increase (in-storage_depot2_brand4) 1.0)			(increase (truck-cap_truck1) 1.0)
))
(:action unloadtruck__brand4__truck1__depot3
	:parameters ()
	:precondition (and  (at-location_truck1_depot3)(> (in-truck-sugar_brand4_truck1) 0.0))
	:effect (and 
			(decrease (in-truck-sugar_brand4_truck1) 1.0)			(increase (in-storage_depot3_brand4) 1.0)			(increase (truck-cap_truck1) 1.0)
))
(:action unloadtruck__brand4__truck1__mill3
	:parameters ()
	:precondition (and  (at-location_truck1_mill3)(> (in-truck-sugar_brand4_truck1) 0.0))
	:effect (and 
			(increase (in-storage_mill3_brand4) 1.0)			(decrease (in-truck-sugar_brand4_truck1) 1.0)			(increase (truck-cap_truck1) 1.0)
))
(:action unloadtruck__brand4__truck1__depot1
	:parameters ()
	:precondition (and  (at-location_truck1_depot1)(> (in-truck-sugar_brand4_truck1) 0.0))
	:effect (and 
			(decrease (in-truck-sugar_brand4_truck1) 1.0)			(increase (truck-cap_truck1) 1.0)			(increase (in-storage_depot1_brand4) 1.0)
))
(:action sugarcanemills__sugarcane__mill1__mill2
	:parameters ()
	:precondition (and (> (has-resource_sugarcane_mill2) 0.0) (place-order_sugarcane_mill1))
	:effect (and 
			(increase (has-resource_sugarcane_mill1) 1.0)			(decrease (has-resource_sugarcane_mill2) 1.0)			(decrease (inventory-cost) 1.0)			(not (place-order_sugarcane_mill1))
))
(:action sugarcanemills__sugarcane__mill1__mill1
	:parameters ()
	:precondition (and (> (has-resource_sugarcane_mill1) 0.0) (place-order_sugarcane_mill1))
	:effect (and 
			(increase (has-resource_sugarcane_mill1) 1.0)			(decrease (has-resource_sugarcane_mill1) 1.0)			(decrease (inventory-cost) 1.0)			(not (place-order_sugarcane_mill1))
))

(:action producesugar__sugarcane__mill2__brand3
	:parameters ()
	:precondition (and  (current-process_mill2_brand3)(> (has-resource_sugarcane_mill2) 0.0)(> (max-changing_mill2) 0.0) (available_mill2))
	:effect (and 
			(increase (mill-cost) 3.0)			(decrease (has-resource_sugarcane_mill2) 1.0)			(increase (in-storage_mill2_brand3) 1.0)			(not (available_mill2))			(busy_mill2)
))
(:action producesugar__sugarcane__mill2__brand2
	:parameters ()
	:precondition (and  (current-process_mill2_brand2)(> (has-resource_sugarcane_mill2) 0.0)(> (max-changing_mill2) 0.0) (available_mill2))
	:effect (and 
			(increase (in-storage_mill2_brand2) 1.0)			(increase (mill-cost) 3.0)			(decrease (has-resource_sugarcane_mill2) 1.0)			(not (available_mill2))			(busy_mill2)
))
(:action sugarcanemills__sugarcane__mill2__mill2
	:parameters ()
	:precondition (and (> (has-resource_sugarcane_mill2) 0.0) (place-order_sugarcane_mill2))
	:effect (and 
			(increase (has-resource_sugarcane_mill2) 1.0)			(decrease (has-resource_sugarcane_mill2) 1.0)			(decrease (inventory-cost) 1.0)			(not (place-order_sugarcane_mill2))
))
(:action sugarcanemills__sugarcane__mill2__mill1
	:parameters ()
	:precondition (and (> (has-resource_sugarcane_mill1) 0.0) (place-order_sugarcane_mill2))
	:effect (and 
			(increase (has-resource_sugarcane_mill2) 1.0)			(decrease (has-resource_sugarcane_mill1) 1.0)			(decrease (inventory-cost) 1.0)			(not (place-order_sugarcane_mill2))
))
(:action loadtruckmanual__brand2__truck1__mill3
	:parameters ()
	:precondition (and (> (truck-cap_truck1) 0.0) (at-location_truck1_mill3)(> (in-storage_mill3_brand2) 0.0))
	:effect (and 
			(decrease (truck-cap_truck1) 1.0)			(decrease (in-storage_mill3_brand2) 1.0)			(increase (handling-cost) 1.0)			(increase (in-truck-sugar_brand2_truck1) 1.0)
))
(:action unloadtruck__brand1__truck1__mill2
	:parameters ()
	:precondition (and  (at-location_truck1_mill2)(> (in-truck-sugar_brand1_truck1) 0.0))
	:effect (and 
			(decrease (in-truck-sugar_brand1_truck1) 1.0)			(increase (in-storage_mill2_brand1) 1.0)			(increase (truck-cap_truck1) 1.0)
))
(:action unloadtruck__brand1__truck1__mill3
	:parameters ()
	:precondition (and  (at-location_truck1_mill3)(> (in-truck-sugar_brand1_truck1) 0.0))
	:effect (and 
			(decrease (in-truck-sugar_brand1_truck1) 1.0)			(increase (truck-cap_truck1) 1.0)			(increase (in-storage_mill3_brand1) 1.0)
))
(:action unloadtruck__brand1__truck1__depot3
	:parameters ()
	:precondition (and  (at-location_truck1_depot3)(> (in-truck-sugar_brand1_truck1) 0.0))
	:effect (and 
			(decrease (in-truck-sugar_brand1_truck1) 1.0)			(increase (in-storage_depot3_brand1) 1.0)			(increase (truck-cap_truck1) 1.0)
))
(:action unloadtruck__brand1__truck1__mill1
	:parameters ()
	:precondition (and  (at-location_truck1_mill1)(> (in-truck-sugar_brand1_truck1) 0.0))
	:effect (and 
			(decrease (in-truck-sugar_brand1_truck1) 1.0)			(increase (in-storage_mill1_brand1) 1.0)			(increase (truck-cap_truck1) 1.0)
))
(:action unloadtruck__brand1__truck1__depot1
	:parameters ()
	:precondition (and  (at-location_truck1_depot1)(> (in-truck-sugar_brand1_truck1) 0.0))
	:effect (and 
			(decrease (in-truck-sugar_brand1_truck1) 1.0)			(increase (truck-cap_truck1) 1.0)			(increase (in-storage_depot1_brand1) 1.0)
))
(:action unloadtruck__brand1__truck1__depot2
	:parameters ()
	:precondition (and (> (in-truck-sugar_brand1_truck1) 0.0) (at-location_truck1_depot2))
	:effect (and 
			(decrease (in-truck-sugar_brand1_truck1) 1.0)			(increase (in-storage_depot2_brand1) 1.0)			(increase (truck-cap_truck1) 1.0)
))
(:action sugarcanemills__sugarcane__mill3__mill3
	:parameters ()
	:precondition (and  (place-order_sugarcane_mill3)(> (has-resource_sugarcane_mill3) 0.0))
	:effect (and 
			(decrease (has-resource_sugarcane_mill3) 1.0)			(decrease (inventory-cost) 1.0)			(increase (has-resource_sugarcane_mill3) 1.0)			(not (place-order_sugarcane_mill3))
))
(:action loadtruckmanual__brand2__truck2__mill3
	:parameters ()
	:precondition (and  (at-location_truck2_mill3)(> (in-storage_mill3_brand2) 0.0)(> (truck-cap_truck2) 0.0))
	:effect (and 
			(decrease (in-storage_mill3_brand2) 1.0)			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)			(increase (in-truck-sugar_brand2_truck2) 1.0)
))
(:action sugarcanemills__sugarcane__mill3__mill2
	:parameters ()
	:precondition (and  (place-order_sugarcane_mill3)(> (has-resource_sugarcane_mill2) 0.0))
	:effect (and 
			(decrease (has-resource_sugarcane_mill2) 1.0)			(decrease (inventory-cost) 1.0)			(increase (has-resource_sugarcane_mill3) 1.0)			(not (place-order_sugarcane_mill3))
))
(:action sugarcanemills__sugarcane__mill3__mill1
	:parameters ()
	:precondition (and  (place-order_sugarcane_mill3)(> (has-resource_sugarcane_mill1) 0.0))
	:effect (and 
			(decrease (has-resource_sugarcane_mill1) 1.0)			(decrease (inventory-cost) 1.0)			(increase (has-resource_sugarcane_mill3) 1.0)			(not (place-order_sugarcane_mill3))
))
(:action loadtruckcrane__brand3__truck2__mill2__crane2
	:parameters ()
	:precondition (and (>= (+ (in-storage_mill2_brand3) -5.0 ) 0.0)(>= (+ (truck-cap_truck2) -5.0 ) 0.0) (at-location_truck2_mill2))
	:effect (and 
			(decrease (truck-cap_truck2) 5.0)			(decrease (in-storage_mill2_brand3) 5.0)			(increase (handling-cost) 10.0)			(increase (in-truck-sugar_brand3_truck2) 5.0)
))
(:action loadtruckcrane__brand3__truck2__mill1__crane1
	:parameters ()
	:precondition (and (>= (+ (in-storage_mill1_brand3) -5.0 ) 0.0) (at-location_truck2_mill1)(>= (+ (truck-cap_truck2) -5.0 ) 0.0))
	:effect (and 
			(decrease (truck-cap_truck2) 5.0)			(increase (handling-cost) 10.0)			(increase (in-truck-sugar_brand3_truck2) 5.0)			(decrease (in-storage_mill1_brand3) 5.0)
))
(:action loadtruckcrane__brand2__truck1__mill2__crane2
	:parameters ()
	:precondition (and  (at-location_truck1_mill2)(>= (+ (truck-cap_truck1) -5.0 ) 0.0)(>= (+ (in-storage_mill2_brand2) -5.0 ) 0.0))
	:effect (and 
			(decrease (in-storage_mill2_brand2) 5.0)			(increase (in-truck-sugar_brand2_truck1) 5.0)			(decrease (truck-cap_truck1) 5.0)			(increase (handling-cost) 10.0)
))
(:action loadtruckcrane__brand4__truck2__mill1__crane1
	:parameters ()
	:precondition (and (>= (+ (in-storage_mill1_brand4) -5.0 ) 0.0) (at-location_truck2_mill1)(>= (+ (truck-cap_truck2) -5.0 ) 0.0))
	:effect (and 
			(decrease (truck-cap_truck2) 5.0)			(increase (handling-cost) 10.0)			(decrease (in-storage_mill1_brand4) 5.0)			(increase (in-truck-sugar_brand4_truck2) 5.0)
))
(:action loadtruckcrane__brand3__truck1__mill2__crane2
	:parameters ()
	:precondition (and  (at-location_truck1_mill2)(>= (+ (truck-cap_truck1) -5.0 ) 0.0)(>= (+ (in-storage_mill2_brand3) -5.0 ) 0.0))
	:effect (and 
			(decrease (truck-cap_truck1) 5.0)			(increase (in-truck-sugar_brand3_truck1) 5.0)			(decrease (in-storage_mill2_brand3) 5.0)			(increase (handling-cost) 10.0)
))
(:action loadtruckcrane__brand3__truck1__mill1__crane1
	:parameters ()
	:precondition (and  (at-location_truck1_mill1)(>= (+ (in-storage_mill1_brand3) -5.0 ) 0.0)(>= (+ (truck-cap_truck1) -5.0 ) 0.0))
	:effect (and 
			(decrease (truck-cap_truck1) 5.0)			(increase (in-truck-sugar_brand3_truck1) 5.0)			(increase (handling-cost) 10.0)			(decrease (in-storage_mill1_brand3) 5.0)
))
(:action loadtruckcrane__brand1__truck1__mill2__crane2
	:parameters ()
	:precondition (and  (at-location_truck1_mill2)(>= (+ (truck-cap_truck1) -5.0 ) 0.0)(>= (+ (in-storage_mill2_brand1) -5.0 ) 0.0))
	:effect (and 
			(decrease (in-storage_mill2_brand1) 5.0)			(decrease (truck-cap_truck1) 5.0)			(increase (in-truck-sugar_brand1_truck1) 5.0)			(increase (handling-cost) 10.0)
))
(:action loadtruckcrane__brand1__truck1__mill1__crane1
	:parameters ()
	:precondition (and  (at-location_truck1_mill1)(>= (+ (in-storage_mill1_brand1) -5.0 ) 0.0)(>= (+ (truck-cap_truck1) -5.0 ) 0.0))
	:effect (and 
			(decrease (in-storage_mill1_brand1) 5.0)			(decrease (truck-cap_truck1) 5.0)			(increase (in-truck-sugar_brand1_truck1) 5.0)			(increase (handling-cost) 10.0)
))
(:action loadtruckcrane__brand2__truck2__mill2__crane2
	:parameters ()
	:precondition (and (>= (+ (truck-cap_truck2) -5.0 ) 0.0)(>= (+ (in-storage_mill2_brand2) -5.0 ) 0.0) (at-location_truck2_mill2))
	:effect (and 
			(decrease (in-storage_mill2_brand2) 5.0)			(decrease (truck-cap_truck2) 5.0)			(increase (in-truck-sugar_brand2_truck2) 5.0)			(increase (handling-cost) 10.0)
))
(:action loadtruckmanual__brand4__truck1__depot1
	:parameters ()
	:precondition (and (> (truck-cap_truck1) 0.0) (at-location_truck1_depot1)(> (in-storage_depot1_brand4) 0.0))
	:effect (and 
			(decrease (truck-cap_truck1) 1.0)			(increase (in-truck-sugar_brand4_truck1) 1.0)			(increase (handling-cost) 1.0)			(decrease (in-storage_depot1_brand4) 1.0)
))
(:action loadtruckmanual__brand4__truck1__depot2
	:parameters ()
	:precondition (and (> (truck-cap_truck1) 0.0)(> (in-storage_depot2_brand4) 0.0) (at-location_truck1_depot2))
	:effect (and 
			(decrease (in-storage_depot2_brand4) 1.0)			(decrease (truck-cap_truck1) 1.0)			(increase (in-truck-sugar_brand4_truck1) 1.0)			(increase (handling-cost) 1.0)
))
(:action loadtruckmanual__brand4__truck1__depot3
	:parameters ()
	:precondition (and  (at-location_truck1_depot3)(> (in-storage_depot3_brand4) 0.0)(> (truck-cap_truck1) 0.0))
	:effect (and 
			(decrease (truck-cap_truck1) 1.0)			(increase (in-truck-sugar_brand4_truck1) 1.0)			(decrease (in-storage_depot3_brand4) 1.0)			(increase (handling-cost) 1.0)
))
(:action loadtruckmanual__brand4__truck1__mill1
	:parameters ()
	:precondition (and  (at-location_truck1_mill1)(> (truck-cap_truck1) 0.0)(> (in-storage_mill1_brand4) 0.0))
	:effect (and 
			(decrease (truck-cap_truck1) 1.0)			(increase (in-truck-sugar_brand4_truck1) 1.0)			(increase (handling-cost) 1.0)			(decrease (in-storage_mill1_brand4) 1.0)
))

(:action loadtruckmanual__brand4__truck2__depot1
	:parameters ()
	:precondition (and  (at-location_truck2_depot1)(> (in-storage_depot1_brand4) 0.0)(> (truck-cap_truck2) 0.0))
	:effect (and 
			(increase (in-truck-sugar_brand4_truck2) 1.0)			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)			(decrease (in-storage_depot1_brand4) 1.0)
))
(:action loadtruckmanual__brand4__truck2__depot2
	:parameters ()
	:precondition (and (> (in-storage_depot2_brand4) 0.0) (at-location_truck2_depot2)(> (truck-cap_truck2) 0.0))
	:effect (and 
			(increase (in-truck-sugar_brand4_truck2) 1.0)			(decrease (in-storage_depot2_brand4) 1.0)			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)
))
(:action loadtruckmanual__brand4__truck2__depot3
	:parameters ()
	:precondition (and (> (in-storage_depot3_brand4) 0.0)(> (truck-cap_truck2) 0.0) (at-location_truck2_depot3))
	:effect (and 
			(increase (in-truck-sugar_brand4_truck2) 1.0)			(decrease (in-storage_depot3_brand4) 1.0)			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)
))
(:action loadtruckmanual__brand4__truck2__mill1
	:parameters ()
	:precondition (and (> (in-storage_mill1_brand4) 0.0)(> (truck-cap_truck2) 0.0) (at-location_truck2_mill1))
	:effect (and 
			(increase (in-truck-sugar_brand4_truck2) 1.0)			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)			(decrease (in-storage_mill1_brand4) 1.0)
))

(:action loadtruckmanual__brand3__truck1__mill1
	:parameters ()
	:precondition (and (> (in-storage_mill1_brand3) 0.0) (at-location_truck1_mill1)(> (truck-cap_truck1) 0.0))
	:effect (and 
			(decrease (truck-cap_truck1) 1.0)			(increase (handling-cost) 1.0)			(decrease (in-storage_mill1_brand3) 1.0)			(increase (in-truck-sugar_brand3_truck1) 1.0)
))
(:action loadtruckmanual__brand3__truck1__mill2
	:parameters ()
	:precondition (and  (at-location_truck1_mill2)(> (truck-cap_truck1) 0.0)(> (in-storage_mill2_brand3) 0.0))
	:effect (and 
			(decrease (truck-cap_truck1) 1.0)			(increase (handling-cost) 1.0)			(increase (in-truck-sugar_brand3_truck1) 1.0)			(decrease (in-storage_mill2_brand3) 1.0)
))
(:action loadtruckcrane__brand1__truck2__mill2__crane2
	:parameters ()
	:precondition (and (>= (+ (truck-cap_truck2) -5.0 ) 0.0) (at-location_truck2_mill2)(>= (+ (in-storage_mill2_brand1) -5.0 ) 0.0))
	:effect (and 
			(decrease (truck-cap_truck2) 5.0)			(decrease (in-storage_mill2_brand1) 5.0)			(increase (handling-cost) 10.0)			(increase (in-truck-sugar_brand1_truck2) 5.0)
))
(:action loadtruckmanual__brand3__truck2__mill1
	:parameters ()
	:precondition (and (> (in-storage_mill1_brand3) 0.0)(> (truck-cap_truck2) 0.0) (at-location_truck2_mill1))
	:effect (and 
			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)			(increase (in-truck-sugar_brand3_truck2) 1.0)			(decrease (in-storage_mill1_brand3) 1.0)
))
(:action loadtruckmanual__brand3__truck2__mill2
	:parameters ()
	:precondition (and (> (in-storage_mill2_brand3) 0.0)(> (truck-cap_truck2) 0.0) (at-location_truck2_mill2))
	:effect (and 
			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)			(increase (in-truck-sugar_brand3_truck2) 1.0)			(decrease (in-storage_mill2_brand3) 1.0)
))
(:action loadtruckcrane__brand1__truck2__mill1__crane1
	:parameters ()
	:precondition (and (>= (+ (in-storage_mill1_brand1) -5.0 ) 0.0) (at-location_truck2_mill1)(>= (+ (truck-cap_truck2) -5.0 ) 0.0))
	:effect (and 
			(decrease (truck-cap_truck2) 5.0)			(decrease (in-storage_mill1_brand1) 5.0)			(increase (handling-cost) 10.0)			(increase (in-truck-sugar_brand1_truck2) 5.0)
))
(:action settingmachine__mill1
	:parameters ()
	:precondition (and  (busy_mill1))
	:effect (and 
			(not (busy_mill1))			(available_mill1)
))
(:action settingmachine__mill2
	:parameters ()
	:precondition (and  (busy_mill2))
	:effect (and 
			(not (busy_mill2))			(available_mill2)
))
(:action loadtruckmanual__brand2__truck1__mill2
	:parameters ()
	:precondition (and  (at-location_truck1_mill2)(> (truck-cap_truck1) 0.0)(> (in-storage_mill2_brand2) 0.0))
	:effect (and 
			(decrease (truck-cap_truck1) 1.0)			(decrease (in-storage_mill2_brand2) 1.0)			(increase (handling-cost) 1.0)			(increase (in-truck-sugar_brand2_truck1) 1.0)
))
(:action loadtruckmanual__brand2__truck2__mill2
	:parameters ()
	:precondition (and (> (truck-cap_truck2) 0.0) (at-location_truck2_mill2)(> (in-storage_mill2_brand2) 0.0))
	:effect (and 
			(decrease (in-storage_mill2_brand2) 1.0)			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)			(increase (in-truck-sugar_brand2_truck2) 1.0)
))
(:action loadtruckcrane__brand4__truck2__mill3__crane3
	:parameters ()
	:precondition (and (>= (+ (truck-cap_truck2) -5.0 ) 0.0)(>= (+ (in-storage_mill3_brand4) -5.0 ) 0.0) (at-location_truck2_mill3))
	:effect (and 
			(decrease (truck-cap_truck2) 5.0)			(increase (handling-cost) 10.0)			(increase (in-truck-sugar_brand4_truck2) 5.0)			(decrease (in-storage_mill3_brand4) 5.0)
))
(:action loadtruckcrane__brand4__truck1__mill1__crane1
	:parameters ()
	:precondition (and  (at-location_truck1_mill1)(>= (+ (in-storage_mill1_brand4) -5.0 ) 0.0)(>= (+ (truck-cap_truck1) -5.0 ) 0.0))
	:effect (and 
			(decrease (truck-cap_truck1) 5.0)			(increase (in-truck-sugar_brand4_truck1) 5.0)			(increase (handling-cost) 10.0)			(decrease (in-storage_mill1_brand4) 5.0)
))
(:action unloadtruck__brand2__truck2__mill2
	:parameters ()
	:precondition (and  (at-location_truck2_mill2)(> (in-truck-sugar_brand2_truck2) 0.0))
	:effect (and 
			(decrease (in-truck-sugar_brand2_truck2) 1.0)			(increase (in-storage_mill2_brand2) 1.0)			(increase (truck-cap_truck2) 1.0)
))
(:action unloadtruck__brand2__truck2__mill3
	:parameters ()
	:precondition (and  (at-location_truck2_mill3)(> (in-truck-sugar_brand2_truck2) 0.0))
	:effect (and 
			(decrease (in-truck-sugar_brand2_truck2) 1.0)			(increase (in-storage_mill3_brand2) 1.0)			(increase (truck-cap_truck2) 1.0)
))
(:action unloadtruck__brand2__truck2__depot3
	:parameters ()
	:precondition (and (> (in-truck-sugar_brand2_truck2) 0.0) (at-location_truck2_depot3))
	:effect (and 
			(decrease (in-truck-sugar_brand2_truck2) 1.0)			(increase (truck-cap_truck2) 1.0)			(increase (in-storage_depot3_brand2) 1.0)
))

(:action unloadtruck__brand2__truck2__depot1
	:parameters ()
	:precondition (and  (at-location_truck2_depot1)(> (in-truck-sugar_brand2_truck2) 0.0))
	:effect (and 
			(decrease (in-truck-sugar_brand2_truck2) 1.0)			(increase (in-storage_depot1_brand2) 1.0)			(increase (truck-cap_truck2) 1.0)
))
(:action unloadtruck__brand2__truck2__depot2
	:parameters ()
	:precondition (and  (at-location_truck2_depot2)(> (in-truck-sugar_brand2_truck2) 0.0))
	:effect (and 
			(increase (in-storage_depot2_brand2) 1.0)			(decrease (in-truck-sugar_brand2_truck2) 1.0)			(increase (truck-cap_truck2) 1.0)
))
(:action loadtruckmanual__brand1__truck1__depot1
	:parameters ()
	:precondition (and (> (truck-cap_truck1) 0.0) (at-location_truck1_depot1)(> (in-storage_depot1_brand1) 0.0))
	:effect (and 
			(decrease (truck-cap_truck1) 1.0)			(increase (in-truck-sugar_brand1_truck1) 1.0)			(increase (handling-cost) 1.0)			(decrease (in-storage_depot1_brand1) 1.0)
))
(:action loadtruckmanual__brand1__truck1__depot2
	:parameters ()
	:precondition (and (> (in-storage_depot2_brand1) 0.0)(> (truck-cap_truck1) 0.0) (at-location_truck1_depot2))
	:effect (and 
			(decrease (in-storage_depot2_brand1) 1.0)			(decrease (truck-cap_truck1) 1.0)			(increase (in-truck-sugar_brand1_truck1) 1.0)			(increase (handling-cost) 1.0)
))
(:action loadtruckmanual__brand1__truck1__depot3
	:parameters ()
	:precondition (and  (at-location_truck1_depot3)(> (truck-cap_truck1) 0.0)(> (in-storage_depot3_brand1) 0.0))
	:effect (and 
			(decrease (truck-cap_truck1) 1.0)			(increase (in-truck-sugar_brand1_truck1) 1.0)			(decrease (in-storage_depot3_brand1) 1.0)			(increase (handling-cost) 1.0)
))
(:action loadtruckmanual__brand1__truck1__mill1
	:parameters ()
	:precondition (and  (at-location_truck1_mill1)(> (truck-cap_truck1) 0.0)(> (in-storage_mill1_brand1) 0.0))
	:effect (and 
			(decrease (in-storage_mill1_brand1) 1.0)			(decrease (truck-cap_truck1) 1.0)			(increase (in-truck-sugar_brand1_truck1) 1.0)			(increase (handling-cost) 1.0)
))
(:action loadtruckmanual__brand1__truck1__mill2
	:parameters ()
	:precondition (and  (at-location_truck1_mill2)(> (in-storage_mill2_brand1) 0.0)(> (truck-cap_truck1) 0.0))
	:effect (and 
			(decrease (in-storage_mill2_brand1) 1.0)			(decrease (truck-cap_truck1) 1.0)			(increase (in-truck-sugar_brand1_truck1) 1.0)			(increase (handling-cost) 1.0)
))

(:action unloadtruck__brand2__truck1__mill3
	:parameters ()
	:precondition (and  (at-location_truck1_mill3)(> (in-truck-sugar_brand2_truck1) 0.0))
	:effect (and 
			(increase (in-storage_mill3_brand2) 1.0)			(increase (truck-cap_truck1) 1.0)			(decrease (in-truck-sugar_brand2_truck1) 1.0)
))

(:action unloadtruck__brand2__truck1__mill2
	:parameters ()
	:precondition (and  (at-location_truck1_mill2)(> (in-truck-sugar_brand2_truck1) 0.0))
	:effect (and 
			(increase (in-storage_mill2_brand2) 1.0)			(increase (truck-cap_truck1) 1.0)			(decrease (in-truck-sugar_brand2_truck1) 1.0)
))
(:action unloadtruck__brand2__truck1__depot2
	:parameters ()
	:precondition (and (> (in-truck-sugar_brand2_truck1) 0.0) (at-location_truck1_depot2))
	:effect (and 
			(increase (in-storage_depot2_brand2) 1.0)			(increase (truck-cap_truck1) 1.0)			(decrease (in-truck-sugar_brand2_truck1) 1.0)
))
(:action unloadtruck__brand2__truck1__depot3
	:parameters ()
	:precondition (and  (at-location_truck1_depot3)(> (in-truck-sugar_brand2_truck1) 0.0))
	:effect (and 
			(increase (truck-cap_truck1) 1.0)			(increase (in-storage_depot3_brand2) 1.0)			(decrease (in-truck-sugar_brand2_truck1) 1.0)
))
(:action unloadtruck__brand2__truck1__depot1
	:parameters ()
	:precondition (and  (at-location_truck1_depot1)(> (in-truck-sugar_brand2_truck1) 0.0))
	:effect (and 
			(increase (in-storage_depot1_brand2) 1.0)			(increase (truck-cap_truck1) 1.0)			(decrease (in-truck-sugar_brand2_truck1) 1.0)
))
(:action loadtruckmanual__brand1__truck2__depot2
	:parameters ()
	:precondition (and (> (in-storage_depot2_brand1) 0.0) (at-location_truck2_depot2)(> (truck-cap_truck2) 0.0))
	:effect (and 
			(increase (in-truck-sugar_brand1_truck2) 1.0)			(decrease (in-storage_depot2_brand1) 1.0)			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)
))
(:action loadtruckmanual__brand1__truck2__depot3
	:parameters ()
	:precondition (and (> (in-storage_depot3_brand1) 0.0)(> (truck-cap_truck2) 0.0) (at-location_truck2_depot3))
	:effect (and 
			(increase (in-truck-sugar_brand1_truck2) 1.0)			(decrease (in-storage_depot3_brand1) 1.0)			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)
))
(:action loadtruckmanual__brand1__truck2__mill1
	:parameters ()
	:precondition (and (> (in-storage_mill1_brand1) 0.0)(> (truck-cap_truck2) 0.0) (at-location_truck2_mill1))
	:effect (and 
			(increase (in-truck-sugar_brand1_truck2) 1.0)			(decrease (in-storage_mill1_brand1) 1.0)			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)
))
(:action loadtruckmanual__brand1__truck2__mill2
	:parameters ()
	:precondition (and (> (in-storage_mill2_brand1) 0.0)(> (truck-cap_truck2) 0.0) (at-location_truck2_mill2))
	:effect (and 
			(decrease (in-storage_mill2_brand1) 1.0)			(increase (in-truck-sugar_brand1_truck2) 1.0)			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)
))
(:action loadtruckcrane__brand4__truck1__mill3__crane3
	:parameters ()
	:precondition (and (>= (+ (in-storage_mill3_brand4) -5.0 ) 0.0)(>= (+ (truck-cap_truck1) -5.0 ) 0.0) (at-location_truck1_mill3))
	:effect (and 
			(decrease (truck-cap_truck1) 5.0)			(increase (in-truck-sugar_brand4_truck1) 5.0)			(increase (handling-cost) 10.0)			(decrease (in-storage_mill3_brand4) 5.0)
))
(:action loadtruckmanual__brand1__truck2__depot1
	:parameters ()
	:precondition (and (> (in-storage_depot1_brand1) 0.0) (at-location_truck2_depot1)(> (truck-cap_truck2) 0.0))
	:effect (and 
			(increase (in-truck-sugar_brand1_truck2) 1.0)			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)			(decrease (in-storage_depot1_brand1) 1.0)
))



(:action unloadtruck__brand3__truck1__mill2
	:parameters ()
	:precondition (and  (at-location_truck1_mill2)(> (in-truck-sugar_brand3_truck1) 0.0))
	:effect (and 
			(decrease (in-truck-sugar_brand3_truck1) 1.0)			(increase (truck-cap_truck1) 1.0)			(increase (in-storage_mill2_brand3) 1.0)
))

(:action unloadtruck__brand3__truck1__depot3
	:parameters ()
	:precondition (and  (at-location_truck1_depot3)(> (in-truck-sugar_brand3_truck1) 0.0))
	:effect (and 
			(decrease (in-truck-sugar_brand3_truck1) 1.0)			(increase (truck-cap_truck1) 1.0)			(increase (in-storage_depot3_brand3) 1.0)
))
(:action unloadtruck__brand3__truck1__mill1
	:parameters ()
	:precondition (and  (at-location_truck1_mill1)(> (in-truck-sugar_brand3_truck1) 0.0))
	:effect (and 
			(increase (in-storage_mill1_brand3) 1.0)			(decrease (in-truck-sugar_brand3_truck1) 1.0)			(increase (truck-cap_truck1) 1.0)
))
(:action unloadtruck__brand3__truck1__depot1
	:parameters ()
	:precondition (and  (at-location_truck1_depot1)(> (in-truck-sugar_brand3_truck1) 0.0))
	:effect (and 
			(increase (in-storage_depot1_brand3) 1.0)			(decrease (in-truck-sugar_brand3_truck1) 1.0)			(increase (truck-cap_truck1) 1.0)
))
(:action unloadtruck__brand3__truck1__depot2
	:parameters ()
	:precondition (and (> (in-truck-sugar_brand3_truck1) 0.0) (at-location_truck1_depot2))
	:effect (and 
			(decrease (in-truck-sugar_brand3_truck1) 1.0)			(increase (truck-cap_truck1) 1.0)			(increase (in-storage_depot2_brand3) 1.0)
))
(:action loadtruckmanual__brand2__truck1__depot1
	:parameters ()
	:precondition (and (> (truck-cap_truck1) 0.0)(> (in-storage_depot1_brand2) 0.0) (at-location_truck1_depot1))
	:effect (and 
			(decrease (truck-cap_truck1) 1.0)			(decrease (in-storage_depot1_brand2) 1.0)			(increase (handling-cost) 1.0)			(increase (in-truck-sugar_brand2_truck1) 1.0)
))
(:action loadtruckmanual__brand2__truck1__depot2
	:parameters ()
	:precondition (and (> (truck-cap_truck1) 0.0)(> (in-storage_depot2_brand2) 0.0) (at-location_truck1_depot2))
	:effect (and 
			(decrease (truck-cap_truck1) 1.0)			(increase (handling-cost) 1.0)			(decrease (in-storage_depot2_brand2) 1.0)			(increase (in-truck-sugar_brand2_truck1) 1.0)
))
(:action loadtruckmanual__brand2__truck1__depot3
	:parameters ()
	:precondition (and  (at-location_truck1_depot3)(> (truck-cap_truck1) 0.0)(> (in-storage_depot3_brand2) 0.0))
	:effect (and 
			(decrease (truck-cap_truck1) 1.0)			(increase (handling-cost) 1.0)			(increase (in-truck-sugar_brand2_truck1) 1.0)			(decrease (in-storage_depot3_brand2) 1.0)
))

(:action loadtruckmanual__brand2__truck2__depot1
	:parameters ()
	:precondition (and (> (in-storage_depot1_brand2) 0.0) (at-location_truck2_depot1)(> (truck-cap_truck2) 0.0))
	:effect (and 
			(decrease (in-storage_depot1_brand2) 1.0)			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)			(increase (in-truck-sugar_brand2_truck2) 1.0)
))
(:action loadtruckmanual__brand2__truck2__depot2
	:parameters ()
	:precondition (and  (at-location_truck2_depot2)(> (in-storage_depot2_brand2) 0.0)(> (truck-cap_truck2) 0.0))
	:effect (and 
			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)			(decrease (in-storage_depot2_brand2) 1.0)			(increase (in-truck-sugar_brand2_truck2) 1.0)
))
(:action loadtruckmanual__brand2__truck2__depot3
	:parameters ()
	:precondition (and (> (in-storage_depot3_brand2) 0.0)(> (truck-cap_truck2) 0.0) (at-location_truck2_depot3))
	:effect (and 
			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)			(increase (in-truck-sugar_brand2_truck2) 1.0)			(decrease (in-storage_depot3_brand2) 1.0)
))


(:action unloadtruck__brand3__truck2__mill1
	:parameters ()
	:precondition (and  (at-location_truck2_mill1)(> (in-truck-sugar_brand3_truck2) 0.0))
	:effect (and 
			(increase (in-storage_mill1_brand3) 1.0)			(decrease (in-truck-sugar_brand3_truck2) 1.0)			(increase (truck-cap_truck2) 1.0)
))
(:action unloadtruck__brand3__truck2__mill2
	:parameters ()
	:precondition (and  (at-location_truck2_mill2)(> (in-truck-sugar_brand3_truck2) 0.0))
	:effect (and 
			(decrease (in-truck-sugar_brand3_truck2) 1.0)			(increase (truck-cap_truck2) 1.0)			(increase (in-storage_mill2_brand3) 1.0)
))
(:action unloadtruck__brand3__truck2__depot2
	:parameters ()
	:precondition (and  (at-location_truck2_depot2)(> (in-truck-sugar_brand3_truck2) 0.0))
	:effect (and 
			(decrease (in-truck-sugar_brand3_truck2) 1.0)			(increase (truck-cap_truck2) 1.0)			(increase (in-storage_depot2_brand3) 1.0)
))
(:action unloadtruck__brand3__truck2__depot3
	:parameters ()
	:precondition (and (> (in-truck-sugar_brand3_truck2) 0.0) (at-location_truck2_depot3))
	:effect (and 
			(decrease (in-truck-sugar_brand3_truck2) 1.0)			(increase (truck-cap_truck2) 1.0)			(increase (in-storage_depot3_brand3) 1.0)
))
(:action unloadtruck__brand3__truck2__depot1
	:parameters ()
	:precondition (and  (at-location_truck2_depot1)(> (in-truck-sugar_brand3_truck2) 0.0))
	:effect (and 
			(increase (in-storage_depot1_brand3) 1.0)			(decrease (in-truck-sugar_brand3_truck2) 1.0)			(increase (truck-cap_truck2) 1.0)
))

(:action loadtruckmanual__brand3__truck1__depot1
	:parameters ()
	:precondition (and (> (truck-cap_truck1) 0.0) (at-location_truck1_depot1)(> (in-storage_depot1_brand3) 0.0))
	:effect (and 
			(decrease (truck-cap_truck1) 1.0)			(increase (handling-cost) 1.0)			(decrease (in-storage_depot1_brand3) 1.0)			(increase (in-truck-sugar_brand3_truck1) 1.0)
))
(:action loadtruckmanual__brand3__truck1__depot2
	:parameters ()
	:precondition (and (> (truck-cap_truck1) 0.0)(> (in-storage_depot2_brand3) 0.0) (at-location_truck1_depot2))
	:effect (and 
			(decrease (truck-cap_truck1) 1.0)			(increase (handling-cost) 1.0)			(increase (in-truck-sugar_brand3_truck1) 1.0)			(decrease (in-storage_depot2_brand3) 1.0)
))
(:action loadtruckmanual__brand3__truck1__depot3
	:parameters ()
	:precondition (and  (at-location_truck1_depot3)(> (in-storage_depot3_brand3) 0.0)(> (truck-cap_truck1) 0.0))
	:effect (and 
			(decrease (truck-cap_truck1) 1.0)			(decrease (in-storage_depot3_brand3) 1.0)			(increase (handling-cost) 1.0)			(increase (in-truck-sugar_brand3_truck1) 1.0)
))

(:action loadtruckmanual__brand3__truck2__depot1
	:parameters ()
	:precondition (and  (at-location_truck2_depot1)(> (truck-cap_truck2) 0.0)(> (in-storage_depot1_brand3) 0.0))
	:effect (and 
			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)			(increase (in-truck-sugar_brand3_truck2) 1.0)			(decrease (in-storage_depot1_brand3) 1.0)
))
(:action loadtruckmanual__brand3__truck2__depot2
	:parameters ()
	:precondition (and  (at-location_truck2_depot2)(> (in-storage_depot2_brand3) 0.0)(> (truck-cap_truck2) 0.0))
	:effect (and 
			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)			(increase (in-truck-sugar_brand3_truck2) 1.0)			(decrease (in-storage_depot2_brand3) 1.0)
))
(:action loadtruckmanual__brand3__truck2__depot3
	:parameters ()
	:precondition (and (> (in-storage_depot3_brand3) 0.0)(> (truck-cap_truck2) 0.0) (at-location_truck2_depot3))
	:effect (and 
			(decrease (in-storage_depot3_brand3) 1.0)			(increase (handling-cost) 1.0)			(decrease (truck-cap_truck2) 1.0)			(increase (in-truck-sugar_brand3_truck2) 1.0)
))




)