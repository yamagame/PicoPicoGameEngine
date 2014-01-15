/*-----------------------------------------------------------------------------------------------
	名前	PPFlMMLObject.h
	説明		        
	作成	2012.07.22 by H.Yamaguchi
	更新
-----------------------------------------------------------------------------------------------*/

#ifndef __PPFlMMLObject_h__
#define __PPFlMMLObject_h__

/*-----------------------------------------------------------------------------------------------
	インクルードファイル
-----------------------------------------------------------------------------------------------*/

#include "PPObject.h"

/*-----------------------------------------------------------------------------------------------
	クラス
-----------------------------------------------------------------------------------------------*/

class PPLuaScript;

class PPFlMMLObject : public PPObject {
public:
	PPFlMMLObject(PPWorld* world);
	virtual ~PPFlMMLObject();
	
	static void openLibrary(PPLuaScript* script,const char* name,const char* superclass=NULL);
	
	int noteNo;

  static std::string className;
};

#endif

/*-----------------------------------------------------------------------------------------------
	このファイルはここまで
-----------------------------------------------------------------------------------------------*/
