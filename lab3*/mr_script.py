from mrjob.job import MRJob
from mrjob.job import MRStep


class DAUmetric(MRJob):
    def mapper(self, _, s):
        uid, timestamp, action, *_ = s.split("\t")
        if timestamp != "timestamp" and action == "checkout":
            yield (timestamp[:10], uid), 1

    def reducer(self, key, _):
        yield key[0], key[1]

    def reducer2(self, key, values):
        yield key, sum(1 for _ in values)

    def mapper2(self, date, users):
        yield date[:-3], (date, users)

    def reducer3(self, key, values):
        list_values = list(values)
        sum_users = sum(i[1] for i in list_values)
        yield None, (key, sum_users, list_values)

    def reducer4(self, key, values):
        dates = min(values, key=lambda x: x[1])[2]
        dates.sort(key=lambda x: int(x[0].split("-")[2]))
        for date, dau in dates:
            yield date, dau

    def steps(self):
        return [
            MRStep(mapper=self.mapper, reducer=self.reducer),
            MRStep(reducer=self.reducer2),
            MRStep(mapper=self.mapper2, reducer=self.reducer3),
            MRStep(reducer=self.reducer4)
        ]


if __name__ == "__main__":
    DAUmetric.run()
