/*-----------------------------------------------------------------------------------------------
	名前	PPFlMMLSeq.h
	説明		        
	作成	2012.07.22 by H.Yamaguchi
	更新
-----------------------------------------------------------------------------------------------*/

#ifndef __PPFlMMLSeq_h__
#define __PPFlMMLSeq_h__

/*-----------------------------------------------------------------------------------------------
	インクルードファイル
-----------------------------------------------------------------------------------------------*/

#include <FlMML/MSequencer.h>

/*-----------------------------------------------------------------------------------------------
	クラス
-----------------------------------------------------------------------------------------------*/

namespace FlMML {

class PPFlMMLSeq : public MSequencer {
public:
	PPFlMMLSeq();
	virtual ~PPFlMMLSeq();

	virtual void play();
	virtual void disconnectAll();
	virtual unsigned int getTimer();

	void fillSoundBuffer(void* buffer,int size);

	int index;
	float volume;
};

}

#endif

/*-----------------------------------------------------------------------------------------------
	このファイルはここまで
-----------------------------------------------------------------------------------------------*/