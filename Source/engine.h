//HEADER_GOES_HERE
#ifndef __ENGINE_H__
#define __ENGINE_H__

//offset 0
//pCelBuff->pFrameTable[0]

extern int engine_cpp_init_value; // weak
extern char gbPixelCol; // automap pixel color 8-bit (palette entry)
extern int dword_52B970; // bool flip - if y < x
extern int orgseed; // weak
extern int sgnWidth;
extern int sglGameSeed; // weak
extern int SeedCount; // weak
extern int dword_52B99C; // bool valid - if x/y are in bounds

void __cdecl engine_cpp_init_1();
void __fastcall CelDrawDatOnly(char *pDecodeTo, char *pRLEBytes, int dwRLESize, int dwRLEWdt);
void __fastcall CelDecodeOnly(int screen_x, int screen_y, void *pCelBuff, int frame, int frame_width);
void __fastcall CelDecDatOnly(char *pBuff, char *pCelBuff, int frame, int frame_width);
void __fastcall CelDrawHdrOnly(int screen_x, int screen_y, char *pCelBuff, int frame, int frame_width, int always_0, int direction);
void __fastcall CelDecodeHdrOnly(char *pBuff, char *pCelBuff, int frame, int frame_width, int always_0, int direction);
void __fastcall CelDecDatLightOnly(char *pDecodeTo, char *pRLEBytes, int frame_content_size, int frame_width);
void __fastcall CelDecDatLightEntry(unsigned char shift, char *LightIndex, char *&pDecodeTo, char *&pRLEBytes); /* __usercall a1@<cl> a2@<ebx> a3@<edi> a4@<esi> */
void __fastcall CelDecDatLightTrans(char *pDecodeTo, char *pRLEBytes, int frame_content_size, int frame_width);
void __fastcall CelDecodeLightOnly(int screen_x, int screen_y, char *pCelBuff, int frame, int frame_width);
void __fastcall CelDecodeHdrLightOnly(int screen_x, int screen_y, char *pCelBuff, int frame, int frame_width, int always_0, int direction);
void __fastcall CelDecodeHdrLightTrans(char *pBuff, char *pCelBuff, int frame, int frame_width, int always_0, int direction);
void __fastcall CelDrawHdrLightRed(int screen_x, int screen_y, char *pCelBuff, int frame, int frame_width, int always_0, int direction, char always_1);
void __fastcall Cel2DecDatOnly(char *pDecodeTo, char *pRLEBytes, int frame_content_size, int frame_width);
void __fastcall Cel2DrawHdrOnly(int screen_x, int screen_y, char *pCelBuff, int frame, int frame_width, int a6, int direction);
void __fastcall Cel2DecodeHdrOnly(char *pBuff, char *pCelBuff, int frame, int frame_width, int a5, int direction);
void __fastcall Cel2DecDatLightOnly(char *pDecodeTo, char *pRLEBytes, int frame_content_size, int frame_width);
void __fastcall Cel2DecDatLightEntry(unsigned char shift, char *LightIndex, char *&pDecodeTo, char *&pRLEBytes); /* __usercall a1@<cl> a2@<ebx> a3@<edi> a4@<esi> */
void __fastcall Cel2DecDatLightTrans(char *pDecodeTo, char *pRLEBytes, int frame_content_size, int frame_width);
void __fastcall Cel2DecodeHdrLight(int screen_x, int screen_y, char *pCelBuff, int frame, int frame_width, int a6, int direction);
void __fastcall Cel2DecodeLightTrans(char *dst_buf, char *pCelBuff, int frame, int frame_width, int a5, int direction);
void __fastcall Cel2DrawHdrLightRed(int screen_x, int screen_y, char *pCelBuff, int frame, int frame_width, int always_0, int direction, char always_1);
void __fastcall CelDecodeRect(char *pBuff, int always_0, int dst_height, int dst_width, char *pCelBuff, int frame, int frame_width);
void __fastcall CelDecodeClr(char colour, int screen_x, int screen_y, char *pCelBuff, int frame, int frame_width, int a7, int direction);
void __fastcall CelDrawHdrClrHL(char colour, int screen_x, int screen_y, char *pCelBuff, int frame, int frame_width, int a7, int direction);
void __fastcall ENG_set_pixel(int screen_x, int screen_y, char pixel);
void __fastcall engine_draw_pixel(int x, int y);
void __fastcall DrawLine(int x0, int y0, int x1, int y1, char col);
int __fastcall GetDirection(int x1, int y1, int x2, int y2);
void __fastcall SetRndSeed(int s);
int __cdecl GetRndSeed();
int __fastcall random(int idx, int v);

#include <string>
#include <vector>
#include <set>
#include <stack>
#include <map>
#include <sstream>
#include <fstream>
bool IsInfernoEnabled();
void ReloadConfig();
bool GetConfigBoolVariable(std::string s);
int GetConfigIntVariable(std::string s);
void DrawXpBar();
void DrawNumbersOnHealthMana();
char GetAutomapTypeColor(int tx, int ty, bool view);
void SetAutomapViewByOtherPlayer(int x, int y, int playerNum);
void RevealMapByOtherPlayers(int x,int y,int playerNum);
void ColorPixel(int x, int y, int color);
void HighlightItemsNameOnMap();
void GenerateRareAffix(int i, int x, int y, int minlvl, int maxlvl, char prefPower, char sufPower, int forceSuffixPrefix/*0=prefix,1=suffix,2=random*/);
void GenerateRareUniqueAffix(int i, int x, int y, int minlvl, int maxlvl, std::set<char>powers);
bool IsItemRare(int isRare, char specialAffix);
bool ShouldItemBeRare(int isRare);
void PlayRareSound();
void ReloadConfig();
bool CanPutToBelt(int miscId);
int FreeSlotOnBelt();
bool CanRun(int pnum);
int MonstersInCombat(int pnum);
int GetTextWidth(char* s);
void PrintDebugInfo();
void PrintInCombat();
int GetItemColor(int index);
int GetItemHighlightColor(int index);
void CheckInvSwitchButtons();
bool SwitchInvTab(int newTab);
void DrawFloatingTextAbovePlayer();
void DrawFloatingExp(int xpGain, int row, int col);
void DrawFloatingDamage(int damage, int row, int col, int callerID, int color = COL_GOLD);
void DrawTransparentBackground(int xPos, int yPos, int width, int height, int borderX, int borderY, uchar backgroundColor, uchar borderColor);
template<typename T, typename... V> __forceinline T By(size_t i, T first, V... rest) { T val[] = { first, (T)rest... }; return val[i <= sizeof...(rest) ? i : sizeof...(rest)]; }
extern std::vector<FloatingText> FloatingTextQueue;


extern std::map<std::string, bool> BoolConfig;
extern std::map<std::string, int> IntConfig;
extern int maxGoldPile;
extern uint SaveVersion;
extern uint CurVersion;
extern int bullshitStructSize;
extern int PlayerShiftX;
extern int PlayerShiftY;
extern bool showDebugInfo;
extern int HighlightedItemID;
extern int HighlightedItemRow;
extern int HighlightedItemCol;
extern bool ShouldHighlightItems;

// try versioning struct size
#define countof( a ) __crt_countof( a ) 
template<typename T> size_t StructSize(int version = -1) { return sizeof(T); }
#define SS(T, ...) template<> inline size_t StructSize<T>(int version) { static const size_t s[] = { __VA_ARGS__ }; if( version = -1 ) version = SaveVersion; size_t size = sizeof(T); \
	for( int i = 0; i < countof(s); i+=2 ) if( size_t(version) > s[i] ) return size; else size = s[i+1]; return size; }

SS(ItemStruct, 0, 368);
SS(PlayerStruct, 1, 80780, 0, 21720); // 21944 = wtf?
#undef SS

void __cdecl engine_cpp_init_2();
void __cdecl mem_init_mutex();
void __cdecl mem_atexit_mutex();
void __cdecl mem_free_mutex();
unsigned char *__fastcall DiabloAllocPtr(int dwBytes);
void __fastcall mem_free_dbg(void *p);
unsigned char *__fastcall LoadFileInMem(char *pszName, int *pdwFileLen);
void __fastcall LoadFileWithMem(char *pszName, void *buf);
void __fastcall Cl2ApplyTrans(char *p, char *ttbl, int last_frame);
void __fastcall Cl2DecodeFrm1(int x, int y, char *pCelBuff, int nCel, int width, int dir1, int dir2);
void __fastcall Cl2DecDatFrm1(char *buffer, char *frame_content, int a3, int width);
void __fastcall Cl2DecodeFrm2(char colour, int screen_x, int screen_y, char *pCelBuff, int nCel, int frame_width, int a7, int a8);
void __fastcall Cl2DecDatFrm2(char *buffer, char *a2, int a3, int a4, char a5);
void __fastcall Cl2DecodeFrm3(int screen_x, int screen_y, char *pCelBuff, int nCel, int frame_width, int a6, int a7, char a8);
void __fastcall Cl2DecDatLightTbl1(char *a1, char *a2, int a3, int a4, char *unused_lindex);
void __fastcall Cl2DecodeLightTbl(int screen_x, int screen_y, char *pCelBuff, int nCel, int frame_width, int a6, int a7);
void __fastcall Cl2DecodeFrm4(int screen_x, int screen_y, char *pCelBuff, int nCel, int frame_width, int a6, int a7);
void __fastcall Cl2DecDatFrm4(char *buffer, char *a2, int a3, int frame_width);
void __fastcall Cl2DecodeClrHL(char colour, int screen_x, int screen_y, char *pCelBuff, int nCel, int frame_width, int a7, int a8);
void __fastcall Cl2DecDatClrHL(char *dst_buf, char *frame_content, int a3, int frame_width, char colour);
void __fastcall Cl2DecodeFrm5(int screen_x, int screen_y, char *pCelBuff, int nCel, int frame_width, int a6, int a7, char a8);
void __fastcall Cl2DecDatLightTbl2(char *dst_buf, char *a2, int a3, int frame_width, char *a5);
void __fastcall Cl2DecodeFrm6(int screen_x, int screen_y, char *pCelBuff, int nCel, int frame_width, int a6, int a7);
void __fastcall PlayInGameMovie(char *pszMovie);

/* data */

extern int engine_inf; // weak

#endif /* __ENGINE_H__ */
