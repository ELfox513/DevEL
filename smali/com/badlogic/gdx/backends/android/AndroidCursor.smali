.class public Lcom/badlogic/gdx/backends/android/AndroidCursor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/graphics/Cursor;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/badlogic/gdx/graphics/Cursor$SystemCursor;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/badlogic/gdx/backends/android/AndroidCursor$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance p0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown system cursor "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    const/4 p1, 0x0

    goto :goto_0

    :pswitch_1
    const/16 p1, 0x3f4

    goto :goto_0

    :pswitch_2
    const/16 p1, 0x3f5

    goto :goto_0

    :pswitch_3
    const/16 p1, 0x3f8

    goto :goto_0

    :pswitch_4
    const/16 p1, 0x3f9

    goto :goto_0

    :pswitch_5
    const/16 p1, 0x3f7

    goto :goto_0

    :pswitch_6
    const/16 p1, 0x3f6

    goto :goto_0

    :pswitch_7
    const/16 p1, 0x3ea

    goto :goto_0

    :pswitch_8
    const/16 p1, 0x3ef

    goto :goto_0

    :pswitch_9
    const/16 p1, 0x3f0

    goto :goto_0

    :pswitch_a
    const/16 p1, 0x3e8

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/badlogic/gdx/backends/android/a;->a(Landroid/view/View;Landroid/view/PointerIcon;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dispose()V
    .locals 0

    return-void
.end method
