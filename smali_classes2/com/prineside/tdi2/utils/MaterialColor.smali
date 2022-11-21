.class public Lcom/prineside/tdi2/utils/MaterialColor;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/prineside/tdi2/utils/MaterialColor$RED;,
        Lcom/prineside/tdi2/utils/MaterialColor$PINK;,
        Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;,
        Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;,
        Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;,
        Lcom/prineside/tdi2/utils/MaterialColor$BLUE;,
        Lcom/prineside/tdi2/utils/MaterialColor$CYAN;,
        Lcom/prineside/tdi2/utils/MaterialColor$TEAL;,
        Lcom/prineside/tdi2/utils/MaterialColor$GREEN;,
        Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;,
        Lcom/prineside/tdi2/utils/MaterialColor$LIME;,
        Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;,
        Lcom/prineside/tdi2/utils/MaterialColor$AMBER;,
        Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;,
        Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;,
        Lcom/prineside/tdi2/utils/MaterialColor$BROWN;,
        Lcom/prineside/tdi2/utils/MaterialColor$GREY;,
        Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;,
        Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;,
        Lcom/prineside/tdi2/utils/MaterialColor$Colors;,
        Lcom/prineside/tdi2/utils/MaterialColor$Variants;
    }
.end annotation


# static fields
.field public static final BYTE_PALETTE:[Lcom/badlogic/gdx/graphics/Color;

.field public static final BYTE_PALETTE_COLOR_COUNT:I = 0x12

.field public static final BYTE_PALETTE_VARIANT_COUNT:I = 0x5

.field public static final allColors:[[Lcom/badlogic/gdx/graphics/Color;


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    const/16 v0, 0x5c

    new-array v0, v0, [Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v4, 0x2

    aput-object v1, v0, v4

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/4 v5, 0x3

    aput-object v1, v0, v5

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/4 v6, 0x4

    aput-object v1, v0, v6

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/4 v7, 0x5

    aput-object v1, v0, v7

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/4 v8, 0x6

    aput-object v1, v0, v8

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/4 v9, 0x7

    aput-object v1, v0, v9

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/16 v10, 0x8

    aput-object v1, v0, v10

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/16 v11, 0x9

    aput-object v1, v0, v11

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/16 v12, 0xa

    aput-object v1, v0, v12

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v13, 0xb

    aput-object v1, v0, v13

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v14, 0xc

    aput-object v1, v0, v14

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/16 v15, 0xd

    aput-object v1, v0, v15

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/16 v16, 0xe

    aput-object v1, v0, v16

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/16 v17, 0xf

    aput-object v1, v0, v17

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v18, 0x10

    aput-object v1, v0, v18

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v19, 0x11

    aput-object v1, v0, v19

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/16 v20, 0x12

    aput-object v1, v0, v20

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/16 v15, 0x13

    aput-object v1, v0, v15

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x14

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x15

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x16

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x17

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x18

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x19

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x1a

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x1b

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x1c

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x1d

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x1e

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x1f

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x20

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x21

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x22

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x23

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x24

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x25

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x26

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x27

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x28

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x29

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x2a

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x2b

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x2c

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x2d

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x2e

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x2f

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x30

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x31

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIME;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x32

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIME;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x33

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIME;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x34

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIME;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x35

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIME;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x36

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x37

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x38

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x39

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x3a

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x3b

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x3c

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x3d

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x3e

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x3f

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x40

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x41

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x42

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x43

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x44

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x45

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x46

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x47

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x48

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x49

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x4a

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BROWN;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x4b

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BROWN;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x4c

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BROWN;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x4d

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BROWN;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x4e

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BROWN;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x4f

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x50

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x51

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x52

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x53

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x54

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P200:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x55

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P300:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x56

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P500:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x57

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P700:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x58

    aput-object v1, v0, v21

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->P900:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x59

    aput-object v1, v0, v21

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->BLACK:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x5a

    aput-object v1, v0, v21

    sget-object v1, Lcom/badlogic/gdx/graphics/Color;->WHITE:Lcom/badlogic/gdx/graphics/Color;

    const/16 v21, 0x5b

    aput-object v1, v0, v21

    sput-object v0, Lcom/prineside/tdi2/utils/MaterialColor;->BYTE_PALETTE:[Lcom/badlogic/gdx/graphics/Color;

    new-array v0, v15, [[Lcom/badlogic/gdx/graphics/Color;

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$RED;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$PINK;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v3

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$PURPLE;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v4

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_PURPLE;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v5

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$INDIGO;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v6

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v7

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_BLUE;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v8

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$CYAN;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v9

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$TEAL;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v10

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREEN;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v11

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIGHT_GREEN;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v12

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$LIME;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v13

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$YELLOW;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v14

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$AMBER;->values:[Lcom/badlogic/gdx/graphics/Color;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$ORANGE;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v16

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$DEEP_ORANGE;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v17

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BROWN;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v18

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$GREY;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v19

    sget-object v1, Lcom/prineside/tdi2/utils/MaterialColor$BLUE_GREY;->values:[Lcom/badlogic/gdx/graphics/Color;

    aput-object v1, v0, v20

    sput-object v0, Lcom/prineside/tdi2/utils/MaterialColor;->allColors:[[Lcom/badlogic/gdx/graphics/Color;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
