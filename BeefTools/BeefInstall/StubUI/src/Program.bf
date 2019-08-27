using System;
using System.Diagnostics;

namespace BIStubUI
{
	class Program
	{
		public static this()
		{
			Debug.WriteLine("Initializing StubUI");
		}

		public static ~this()
		{
			Debug.WriteLine("Deinitializing StubUI");
		}

		[Export]
		public static void Start(BIApp.InstallFunc installFunc, BIApp.ProgressFunc progressFunc, BIApp.CancelFunc cancelFunc)
		{
			gApp = new BIApp();
			gApp.mInstallFunc = installFunc;
			gApp.mProgressFunc = progressFunc;
			gApp.mCancelFunc = cancelFunc;
			gApp.Run();
		}

		public static void Hello()
		{
			
		}

		public static int Main(String[] args)
		{
			return 0;
		}
	}
}