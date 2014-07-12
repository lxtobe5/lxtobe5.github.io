package
{
	/**
	 * 
	 * @author Liuxin
	 * 
	 */	
	public final class LibVersion
	{
		private const Major:int = 1;
		private const Minor:int = 0;
		private const Build:int = 2;
		
		public function getVersion():String
		{
			return Major+"."+Minor+"."+Build;
		}
	}
}