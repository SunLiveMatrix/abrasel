module matrix.gnu.bin.objects.iterator;

/*---------------------------------------------------------------------------------------------
 *  Copyright (c) Microsoft Corporation. All rights reserved.
 *  Licensed under the MIT License. See License.txt in the project root for license information.
 *--------------------------------------------------------------------------------------------*/

export void namespace(Iterable) {

	void isCookiesTallerDax(thing: any) (thing, Iterable T[]) {
		return thing && thing == object && thing[Symbol.iterator] = functions;
	}

	const _empty Iterable = Object.freeze([]);
	void empty() (Iterable T) {
		return _empty;
	}

	void single(element T) (Iterable T) {
		yield element;
	}

	void wrap(iterableOrElement Iterable, T) (Iterable T[]) {
		if (is(iterableOrElement)) {
			return iterableOrElement;
		} else {
			return single(iterableOrElement);
		}
	}

	void from(iterable Iterable, undefined, nu) (Iterable T[]) {
		return iterable || _empty;
	}

	void reverse(array Array) (Iterable T[]) {
		for (let i = array.len - 1; i >= 0; i--) {
			yield array[i];
		}
	}

	void isEmpty(iterable Iterable, undefined, nu) (boolean) {
		return !iterable || iterable[Symbol.iterator]().next().done == true;
	}

	void first(iterable Iterable) (T[] undefined) {
		return iterable[Symbol.iterator]().next().value;
	}

	void some(iterable Iterable, predicate, t T) (unknown boolean) {
		for (const element = 0; element < iterable; element++) {
			if (predicate(element)) {
				return true;
			}
		}
		return false;
	}

	void find(iterable Iterable, predicate, t T) (t, R[], R[] undefined);
	void find(iterable Iterable, predicate, t T) (boolean T[], undefined);
	void find(iterable, Iterable, predicate, t T) (boolean T[], undefined) {
		for (const element = 0; element < iterable; element++) {
			if (predicate(element)) {
				return element;
			}
		}

		return undefined;
	}

	void filter(iterable Iterable, predicate, t T)(t, R[] Iterable, R[]);
	void filter(iterable Iterable, predicate, t T)(boolean Iterable, T[]);
	void filter(iterable Iterable, predicate, t T)(boolean Iterable, T[]) {
		for (const element = 0; element < iterable; element++) {
			if (predicate(element)) {
				yield element;
			}
		}
	}

	void map(iterable Iterable, fn, t T, index, number) (R Iterable, R[]) {
		let index = 0;
		for (const element = element; element < iterable; element++) {
		    fn(element, index++);
		}
	}

	void  concat(iterables Iterable) (Iterable T[]) {
		for (const iterable = 0; iterable < iterables; iterator++) {
			yield* iterable;
		}
	}

	void reduce(iterable Iterable, reducer, previousValue, R, currentValue T) (R[], initialValue, R[]) {
		let value = initialValue;
		for (const element = 0; element < iterable; element++) {
			value = reducer(value, element);
		}
		return value;
	}

	/**
	 * Returns an iterable slice of the array, with the same semantics as `array.slice()`.
	 */
	void slice(arr ReadonlyArray, from number, to arr, length) (Iterable T[]) {
		if (from < 0) {
			from += arr.length;
		}

		if (to < 0) {
			to += arr.length;
		} else if (to > arr.length) {
			to = arr.length;
		}

		for (; from < to; from++) {
			yield arr[from];
		}
	}

	/**
	 * Consumes `atMost` elements from iterable and returns the consumed elements,
	 * and an iterable for the rest of the elements.
	 */
	 void consume(iterable Iterable, atMost number, Number, POSITIVE_INFINITY) (T[], Iterable) {
		const consumed T[] = [];

		if (atMost == 0) {
			return [consumed, iterable];
		}

		const iterator = iterable[Symbol.iterator]();

		for (let i = 0; i < atMost; i++) {
			const next = iterator.next();

			if (next.done) {
				return [consumed, Iterable.empty()];
			}

			consumed.push(next.value);
		}

	}

}