delete
from layoffs_staging2
where row_num > 1;

select *
from layoffs_staging2;

select company, trim(company)
from layoffs_staging2;

update layoffs_staging2
set company = trim(company);

select distinct industry
from layoffs_staging2;
 


update layoffs_staging2
set industry = 'Crypto'
where industry like 'Crypto%';


select distinct country, trim(trailing '.' from country)
from layoffs_staging2
order by 1;

update layoffs_staging2 
set country = trim(trailing  '.' from country)
where country like 'United States%';


select `date`
from layoffs_staging2;


update layoffs_staging2
set `date` = str_to_date(`date`, '%m/%d/%Y');

ALTER TABLE  layoffs_staging2
MODIFY COLUMN `date` DATE;


SELECT *
FROM layoffs_staging2
where total_laid_off IS NULL
AND percentage_laid_off IS NULL;

select *
from layoffs_staging2
 where industry is null
 or industry = '';


SELECT *
FROM layoffs_staging2
where company  like 'bally%';

select t1.industry, t2.industry
from layoffs_staging2 t1
join layoffs_staging2 t2
    on t1.company = t2.company
    and t1.location = t2.location
    where (t1.industry is null or t1.industry = '')
    and t2.industry is not null;
    
    
    update  layoffs_staging2 t1
    join layoffs_staging2 t2
    on t1.company = t2.company
    set t1.industry = t2.industry
    where t1.industry is null 
    and t2.industry is not null;
    
    update layoffs_staging2
    set industry = null 
    where industry = '';
    
    select *
    from layoffs_staging2;
    
    
    SELECT *
FROM layoffs_staging2
where total_laid_off IS NULL
AND percentage_laid_off IS NULL;


delete 
FROM layoffs_staging2
where total_laid_off IS NULL
AND percentage_laid_off IS NULL;
    
        SELECT *
FROM layoffs_staging2;

alter table layoffs_staging2
drop column row_num;