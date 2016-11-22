typedef unsigned long int uint64_t;
typedef unsigned int uint32_t;
union W128_T
	{
	uint64_t  u[2];
	uint32_t  u32[4];
	double d[2];
	} ;
typedef union W128_T w128_t;
typedef long unsigned int size_t;
typedef long int __off_t;
typedef void _IO_lock_t;
typedef long int __off64_t;
struct DSFMT_T
	{
	w128_t  status[192];
	int idx;
	} ;
typedef struct DSFMT_T dsfmt_t;
struct _IO_FILE
	{
	int _flags;
	char *_IO_read_ptr;
	char *_IO_read_end;
	char *_IO_read_base;
	char *_IO_write_base;
	char *_IO_write_ptr;
	char *_IO_write_end;
	char *_IO_buf_base;
	char *_IO_buf_end;
	char *_IO_save_base;
	char *_IO_backup_base;
	char *_IO_save_end;
	struct _IO_marker *_markers;
	struct _IO_FILE *_chain;
	int _fileno;
	int _flags2;
	__off_t  _old_offset;
	unsigned short  _cur_column;
	signed char  _vtable_offset;
	char _shortbuf[1];
	_IO_lock_t  *_lock;
	__off64_t  _offset;
	void *__pad1;
	void *__pad2;
	void *__pad3;
	void *__pad4;
	size_t  __pad5;
	int _mode;
	char _unused2[15*sizeof(int)-4*sizeof(void  *)-sizeof(size_t )];
	} ;
dsfmt_t dsfmt;

typedef struct _IO_FILE FILE;
extern int printf(const char *__format, ...);
extern int fprintf(FILE *__stream, const char *__format, ...);

static void do_recursion(w128_t *r, w128_t *a, w128_t *b, w128_t *lung)
{
  uint64_t  t0;
  uint64_t  t1;
  uint64_t  L0;
  uint64_t  L1;
t0 = a->u[0]; 
t1 = a->u[1]; 
L0 = lung->u[0]; 
L1 = lung->u[1]; 
lung->u[0] = (t0 << 19) ^ (L1 >> 32) ^ (L1 << 32) ^ b->u[0]; 
lung->u[1] = (t1 << 19) ^ (L0 >> 32) ^ (L0 << 32) ^ b->u[1]; 
r->u[0] = (lung->u[0] >> 12) ^ (lung->u[0] & 0x000ffafffffffb3fUL) ^ t0; 
r->u[1] = (lung->u[1] >> 12) ^ (lung->u[1] & 0x000ffdfffc90fffdUL) ^ t1;
 if (0) printf("r->u[0], r->u[0] = %lu,%lu\n", r->u[0], r->u[1]);
}

static void convert_o0o1(w128_t *w)
{
w->u[0]|=1; 
w->u[1]|=1; 
w->d[0]-=1.0; 
w->d[1]-=1.0;
 if (0) printf("w->u[0], w->u[0] = %lu,%lu\n", w->u[0], w->u[1]);
}

double rarray[((19937-128)/104+1)*2];

static void gen_rand_array_o0o1(dsfmt_t *dsfmt, w128_t *array, int size)
{
  int i;
  int j;
w128_t  lung;
lung = dsfmt->status[((19937-128)/104+1)]; 
do_recursion(&array[0], &dsfmt->status[0], &dsfmt->status[117], &lung); 
for ( i = 1; i < ((19937-128)/104+1)-117; i++)
	{ 
	{
	do_recursion(&array[i], &dsfmt->status[i], &dsfmt->status[i+117], &lung); 
	}
 }

for ( ; i < ((19937-128)/104+1); i++)
	{ do_recursion(&array[i], &dsfmt->status[i], &array[i+117-((19937-128)/104+1)], &lung);  }

for ( ; i < size-((19937-128)/104+1); i++)
	{ do_recursion(&array[i], &array[i-((19937-128)/104+1)], &array[i+117-((19937-128)/104+1)], &lung); 
convert_o0o1(&array[i-((19937-128)/104+1)]);  }

for ( j = 0; j < 2*((19937-128)/104+1)-size; j++)
	{ 
	{
	dsfmt->status[j] = array[j+size-((19937-128)/104+1)]; 
	}
 }

for ( ; i < size; i++, j++)
	{ do_recursion(&array[i], &array[i-((19937-128)/104+1)], &array[i+117-((19937-128)/104+1)], &lung); 
dsfmt->status[j] = array[i]; 
convert_o0o1(&array[i-((19937-128)/104+1)]);  }

for ( i = size-((19937-128)/104+1); i < size; i++)
	{ 
	{
	convert_o0o1(&array[i]); 
	}
 }

dsfmt->status[((19937-128)/104+1)] = lung; }

extern void __assert_fail(const char *__assertion, const char *__file, unsigned int __line, const char *__function);
int dsfmt_mexp=19937;
int rsize=sizeof (rarray)/sizeof (*rarray);
double  * rptr=0;
extern struct _IO_FILE *stderr;

static void initial_mask(dsfmt_t *dsfmt)
{int i;
uint64_t   *psfmt;
psfmt = &dsfmt->status[0].u[0]; 
for ( i = 0; i < ((19937-128)/104+1)*2; i++)
	{ 
	{
	psfmt[i] = (psfmt[i] & 0x000FFFFFFFFFFFFFUL) | 0x3FF0000000000000UL; 
	}
 }
}

static void period_certification(dsfmt_t *dsfmt)
{uint64_t  pcv[2] = {0x3d84e1ac0dc82880UL, 0x0000000000000001UL};
uint64_t  tmp[2];
uint64_t  inner;
int i;
tmp[0] = (dsfmt->status[((19937-128)/104+1)].u[0] ^ 0x90014964b32f4329UL); 
tmp[1] = (dsfmt->status[((19937-128)/104+1)].u[1] ^ 0x3b8d12ac548a7c7aUL); 
inner = tmp[0] & pcv[0]; 
inner^=tmp[1] & pcv[1]; 
for ( i = 32; i>0; i>>=1)
	{ 
	{
	inner^=inner >> i; 
	if (0) printf("inner=%lu\n", inner);
	}
 }

inner&=1; 
if (inner==1) 
	{
	return;
	}

dsfmt->status[((19937-128)/104+1)].u[1]^=1; 
return;}

void dsfmt_fill_array_open_open(dsfmt_t *dsfmt, double array[], int size)
{((size%2==0) ? (void) (0) : __assert_fail("size % 2 == 0", "../simpleDMC_restructure/src/dSFMT.c", 511, "../simpleDMC_restructure/src/dSFMT.c")); 
((size>=(((19937-128)/104+1)*2)) ? (void) (0) : __assert_fail("size >= (((19937 - 128) / 104 + 1) * 2)", "../simpleDMC_restructure/src/dSFMT.c", 512, "../simpleDMC_restructure/src/dSFMT.c")); 
gen_rand_array_o0o1(dsfmt, (w128_t   *) array, size/2);
}

extern void exit(int __status);

static int idxof(int i)
{return i; }
typedef unsigned int __mode_t;

void  * calloc(size_t __nmemb, size_t __size);

extern double sqrt(double __x);

void dsfmt_chk_init_gen_rand(dsfmt_t *dsfmt, uint32_t seed, int mexp)
{int i;
uint32_t   *psfmt;
if (mexp!=dsfmt_mexp) 
	{
	fprintf(stderr, "DSFMT_MEXP doesn't match with dSFMT.c\n"); 
exit(1); 
	}

psfmt = &dsfmt->status[0].u32[0]; 
psfmt[idxof(0)] = seed; 
for ( i = 1; i < (((19937-128)/104+1)+1)*4; i++)
	{ 
	{
	  uint32_t prev = psfmt[idxof(i-1)];
	  uint32_t tmp = 1812433253UL*(prev ^ (prev >> 30))+i; 
	  if (0) printf("prev = %u, loop[%d] = %u\n", prev, i, tmp);
	  psfmt[idxof(i)] = tmp;
	}
 }

initial_mask(dsfmt); 
period_certification(dsfmt); 
dsfmt->idx = (((19937-128)/104+1)*2); }

void nextUniformRandom()
{
dsfmt_fill_array_open_open(&dsfmt, rarray, rsize); 
rptr = rarray;
}

static void dsfmt_init_gen_rand(dsfmt_t *dsfmt, uint32_t seed)
{dsfmt_chk_init_gen_rand(dsfmt, seed, 19937); }

extern int fclose(FILE *__stream);

double gaussianRand(double dSigma)
{
double d = 0;
int nRands = 12;
((rptr>=rarray) ? (void) (0) : __assert_fail("rptr >= rarray", "../simpleDMC_restructure/src/support.c", 132, "../simpleDMC_restructure/src/support.c")); 
if (rptr>(rarray+rsize-nRands)) 
	{
	nextUniformRandom(); 
	}

for (int i = 0; i < nRands; i++) 
	{
	  printf("*rptr = %.12f\n", *rptr);
	d+=*rptr++; 
	}

d-=nRands/2.0; 
d*=dSigma/sqrt(nRands/12.0); 
return d; }

void  * xcalloc(size_t n, size_t size)
{void  *ptr;
((n>0) ? (void) (0) : __assert_fail("n > 0", "../simpleDMC_restructure/src/main.c", 121, "../simpleDMC_restructure/src/main.c")); 
((size>0) ? (void) (0) : __assert_fail("size > 0", "../simpleDMC_restructure/src/main.c", 123, "../simpleDMC_restructure/src/main.c")); 
ptr = calloc(n, size); 
((ptr) ? (void) (0) : __assert_fail("ptr", "../simpleDMC_restructure/src/main.c", 129, "../simpleDMC_restructure/src/main.c")); 
return ptr; }

extern double fmin(double __x, double __y);

extern int fileno(FILE *__stream);

FILE   * fopen(const char *__filename, const char *__modes);

extern double fmax(double __x, double __y);

extern int fchmod(int __fd, __mode_t __mode);

int testGaussian()
{double t = 5;
double dSq = 0;
double dAv = 0;
int N = 1000000;
int  *bin = (int  *) xcalloc((int) (t*10+1), sizeof(int));
dsfmt_init_gen_rand(&dsfmt, 7); 
nextUniformRandom(); 
for (int ibin = 0; ibin<=t*10; ibin++) 
	{
	bin[ibin] = 0; 
	}

for (int i = 0; i < N; i++) 
	{
	double d = gaussianRand(t);
dSq+=d*d; 
dAv+=d; 
bin[(int) (fmax(fmin(d+5*t, 10*t), 0))]++; 
	}

const char  *data = "./g.dat";
FILE   *plot = fopen(data, "w");
fprintf(plot, "%f %f\n", dAv/N, sqrt(dSq/N-(dAv/N)*(dAv/N))); 
for (int i = 0; i<=t*10; i++) fprintf(plot, "%f\t%d\n", i-5*t, bin[i]); 
fclose(plot); 
data = "./g.sh"; 
plot = fopen(data, "w"); 
fprintf(plot, "#!/usr/bin/gnuplot\n"); 
fprintf(plot, "N(s,x)=exp(-(x/s)**2/2)/(s*sqrt(2*pi))\n"); 
fprintf(plot, "set term postscript enhanced color\n"); 
fprintf(plot, "set output \"g.eps\"\n"); 
fprintf(plot, "p N(%f,x), 'g.dat' u ($1+0.5):($2/1000000) w l\n", t); 
fprintf(plot, "#pause mouse\n"); 
fchmod(fileno(plot), 0700); 
fclose(plot); }
