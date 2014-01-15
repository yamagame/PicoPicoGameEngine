/*-----------------------------------------------------------------------------------------------
	名前	PPBox2D.h
	説明		        
	作成	2012.07.22 by H.Yamaguchi
	更新
-----------------------------------------------------------------------------------------------*/

#ifndef __PPBox2D_h__
#define __PPBox2D_h__

/*-----------------------------------------------------------------------------------------------
	インクルードファイル
-----------------------------------------------------------------------------------------------*/

#include <stdlib.h>
#include <vector>

/*-----------------------------------------------------------------------------------------------
	クラス
-----------------------------------------------------------------------------------------------*/

class PPBox2DWorld;
class PPLuaScript;

class PPBox2D {
public:
	static PPBox2D* openLibrary(PPLuaScript* script,const char* name,const char* superclass=NULL);

  std::vector<PPBox2DWorld*> worlds;

  void addWorld(PPBox2DWorld* world);
  void removeWorld(PPBox2DWorld* world);
};

#endif

/*-----------------------------------------------------------------------------------------------
	このファイルはここまで
-----------------------------------------------------------------------------------------------*/
