#include <libft.h>

size_t		ft_strfindc(const char *s, char c)
{
	size_t	i;

	i = 0;
	if (!s || !*s)
		return (-1);
	while (s && *s && *s != c)
	{
		++s;
		++i;
	}
	return (!*s ? -1 : i);
}
