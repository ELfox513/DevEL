.class public Lcom/badlogic/gdx/input/RemoteInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lcom/badlogic/gdx/Input;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;,
        Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;,
        Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;,
        Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;
    }
.end annotation


# static fields
.field public static DEFAULT_PORT:I = 0x1ffe


# instance fields
.field public A:[I

.field public B:[I

.field public C:[Z

.field public D:Z

.field public E:Lcom/badlogic/gdx/InputProcessor;

.field public final F:I

.field public a:Ljava/net/ServerSocket;

.field public b:[F

.field public d:[F

.field public final ips:[Ljava/lang/String;

.field public k:[F

.field public p:Z

.field public q:F

.field public r:F

.field public s:Z

.field public t:Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

.field public u:I

.field public v:[Z

.field public w:Z

.field public x:[Z

.field public y:[I

.field public z:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/badlogic/gdx/input/RemoteInput;->DEFAULT_PORT:I

    invoke-direct {p0, v0}, Lcom/badlogic/gdx/input/RemoteInput;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/badlogic/gdx/input/RemoteInput;-><init>(ILcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;)V

    return-void
.end method

.method public constructor <init>(ILcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->b:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->d:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->k:[F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->p:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->q:F

    iput v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->r:F

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->s:Z

    iput v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->u:I

    const/16 v1, 0x100

    new-array v2, v1, [Z

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->v:[Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->w:Z

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->x:[Z

    const/16 v1, 0x14

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->y:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->z:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->A:[I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->B:[I

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->C:[Z

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->D:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->E:Lcom/badlogic/gdx/InputProcessor;

    iput-object p2, p0, Lcom/badlogic/gdx/input/RemoteInput;->t:Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

    :try_start_0
    iput p1, p0, Lcom/badlogic/gdx/input/RemoteInput;->F:I

    new-instance p2, Ljava/net/ServerSocket;

    invoke-direct {p2, p1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object p2, p0, Lcom/badlogic/gdx/input/RemoteInput;->a:Ljava/net/ServerSocket;

    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object p2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object p2

    array-length v1, p2

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->ips:[Ljava/lang/String;

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->ips:[Ljava/lang/String;

    aget-object v2, p2, v0

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p2

    new-instance v0, Lcom/badlogic/gdx/utils/GdxRuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t open listening socket at port \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/badlogic/gdx/utils/GdxRuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public constructor <init>(Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;)V
    .locals 1

    sget v0, Lcom/badlogic/gdx/input/RemoteInput;->DEFAULT_PORT:I

    invoke-direct {p0, v0, p1}, Lcom/badlogic/gdx/input/RemoteInput;-><init>(ILcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;)V

    return-void
.end method


# virtual methods
.method public getAccelerometerX()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->b:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerY()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->b:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getAccelerometerZ()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->b:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getAzimuth()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->k:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getCurrentEventTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDeltaX()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->y:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getDeltaX(I)I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->y:[I

    aget p1, v0, p1

    return p1
.end method

.method public getDeltaY()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->z:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getDeltaY(I)I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->z:[I

    aget p1, v0, p1

    return p1
.end method

.method public getGyroscopeX()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->d:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getGyroscopeY()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->d:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getGyroscopeZ()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->d:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getIPs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->ips:[Ljava/lang/String;

    return-object v0
.end method

.method public getInputProcessor()Lcom/badlogic/gdx/InputProcessor;
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->E:Lcom/badlogic/gdx/InputProcessor;

    return-object v0
.end method

.method public getMaxPointers()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public getNativeOrientation()Lcom/badlogic/gdx/Input$Orientation;
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Input$Orientation;->Landscape:Lcom/badlogic/gdx/Input$Orientation;

    return-object v0
.end method

.method public getPitch()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->k:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getPressure()F
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/badlogic/gdx/input/RemoteInput;->getPressure(I)F

    move-result v0

    return v0
.end method

.method public getPressure(I)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/badlogic/gdx/input/RemoteInput;->isTouched(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getRoll()F
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->k:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public getRotation()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getRotationMatrix([F)V
    .locals 0

    return-void
.end method

.method public getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getInput()Lcom/badlogic/gdx/Input;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/badlogic/gdx/Input;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
    .locals 7

    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    invoke-interface {v0}, Lcom/badlogic/gdx/Application;->getInput()Lcom/badlogic/gdx/Input;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/badlogic/gdx/Input;->getTextInput(Lcom/badlogic/gdx/Input$TextInputListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/badlogic/gdx/Input$OnscreenKeyboardType;)V

    return-void
.end method

.method public getX()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->A:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getX(I)I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->A:[I

    aget p1, v0, p1

    return p1
.end method

.method public getY()I
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->B:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getY(I)I
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->B:[I

    aget p1, v0, p1

    return p1
.end method

.method public isButtonJustPressed(I)Z
    .locals 0

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/badlogic/gdx/input/RemoteInput;->D:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isButtonPressed(I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->C:[Z

    array-length v2, v1

    if-ge p1, v2, :cond_2

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public isCatchBackKey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isCatchKey(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isCatchMenuKey()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->s:Z

    return v0
.end method

.method public isCursorCatched()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isKeyJustPressed(I)Z
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-boolean p1, p0, Lcom/badlogic/gdx/input/RemoteInput;->w:Z

    return p1

    :cond_0
    if-ltz p1, :cond_2

    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->x:[Z

    aget-boolean p1, v0, p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public isKeyPressed(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget p1, p0, Lcom/badlogic/gdx/input/RemoteInput;->u:I

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    if-ltz p1, :cond_3

    const/16 v1, 0xff

    if-le p1, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->v:[Z

    aget-boolean p1, v0, p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public isPeripheralAvailable(Lcom/badlogic/gdx/Input$Peripheral;)Z
    .locals 2

    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Accelerometer:Lcom/badlogic/gdx/Input$Peripheral;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->Compass:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_1

    return v1

    :cond_1
    sget-object v0, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    if-ne p1, v0, :cond_2

    iget-boolean p1, p0, Lcom/badlogic/gdx/input/RemoteInput;->p:Z

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isTouched()Z
    .locals 2

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->C:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    return v0
.end method

.method public isTouched(I)Z
    .locals 1

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->C:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method public justTouched()Z
    .locals 1

    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->D:Z

    return v0
.end method

.method public run()V
    .locals 9

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteInput;->s:Z

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->t:Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;->onDisconnected()V

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "listening, port "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/badlogic/gdx/input/RemoteInput;->F:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->a:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 v3, 0xbb8

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setSoTimeout(I)V

    iput-boolean v2, p0, Lcom/badlogic/gdx/input/RemoteInput;->s:Z

    iget-object v3, p0, Lcom/badlogic/gdx/input/RemoteInput;->t:Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/badlogic/gdx/input/RemoteInput$RemoteInputListener;->onConnected()V

    :cond_1
    new-instance v3, Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->p:Z

    :goto_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x2

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->d:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    aput v6, v1, v0

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->d:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    aput v6, v1, v2

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->d:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    aput v6, v1, v5

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->q:F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->r:F

    goto/16 :goto_3

    :pswitch_2
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->k:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    aput v6, v1, v0

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->k:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    aput v6, v1, v2

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->k:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    aput v6, v1, v5

    goto/16 :goto_3

    :pswitch_3
    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->b:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    aput v6, v1, v0

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->b:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    aput v6, v1, v2

    iget-object v1, p0, Lcom/badlogic/gdx/input/RemoteInput;->b:[F

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readFloat()F

    move-result v6

    aput v6, v1, v5

    goto/16 :goto_3

    :pswitch_4
    new-instance v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/badlogic/gdx/input/RemoteInput;->q:F

    div-float/2addr v6, v7

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v6, v7

    float-to-int v6, v6

    iput v6, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->b:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    int-to-float v6, v6

    iget v7, p0, Lcom/badlogic/gdx/input/RemoteInput;->r:F

    div-float/2addr v6, v7

    sget-object v7, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v7}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float v6, v6, v7

    float-to-int v6, v6

    iput v6, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->c:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v6

    iput v6, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->d:I

    iput v5, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->a:I

    :goto_2
    move-object v8, v4

    move-object v4, v1

    move-object v1, v8

    goto/16 :goto_4

    :pswitch_5
    new-instance v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/badlogic/gdx/input/RemoteInput;->q:F

    div-float/2addr v5, v6

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    iput v5, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->b:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/badlogic/gdx/input/RemoteInput;->r:F

    div-float/2addr v5, v6

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    iput v5, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->c:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->d:I

    iput v2, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->a:I

    goto :goto_2

    :pswitch_6
    new-instance v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/badlogic/gdx/input/RemoteInput;->q:F

    div-float/2addr v5, v6

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    iput v5, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->b:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/badlogic/gdx/input/RemoteInput;->r:F

    div-float/2addr v5, v6

    sget-object v6, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v6}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    iput v5, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->c:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->d:I

    iput v0, v1, Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;->a:I

    goto :goto_2

    :pswitch_7
    new-instance v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readChar()C

    move-result v6

    iput-char v6, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->c:C

    iput v5, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->a:I

    goto :goto_4

    :pswitch_8
    new-instance v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->b:I

    iput v2, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->a:I

    goto :goto_4

    :pswitch_9
    new-instance v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;

    invoke-direct {v1, p0}, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;-><init>(Lcom/badlogic/gdx/input/RemoteInput;)V

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    iput v5, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->b:I

    iput v0, v1, Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;->a:I

    goto :goto_4

    :goto_3
    move-object v1, v4

    :goto_4
    sget-object v5, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v6, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;

    invoke-direct {v6, p0, v4, v1}, Lcom/badlogic/gdx/input/RemoteInput$EventTrigger;-><init>(Lcom/badlogic/gdx/input/RemoteInput;Lcom/badlogic/gdx/input/RemoteInput$TouchEvent;Lcom/badlogic/gdx/input/RemoteInput$KeyEvent;)V

    invoke-interface {v5, v6}, Lcom/badlogic/gdx/Application;->postRunnable(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

.method public setCatchBackKey(Z)V
    .locals 0

    return-void
.end method

.method public setCatchKey(IZ)V
    .locals 0

    return-void
.end method

.method public setCatchMenuKey(Z)V
    .locals 0

    return-void
.end method

.method public setCursorCatched(Z)V
    .locals 0

    return-void
.end method

.method public setCursorPosition(II)V
    .locals 0

    return-void
.end method

.method public setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/badlogic/gdx/input/RemoteInput;->E:Lcom/badlogic/gdx/InputProcessor;

    return-void
.end method

.method public setOnscreenKeyboardVisible(Z)V
    .locals 0

    return-void
.end method

.method public setOnscreenKeyboardVisible(ZLcom/badlogic/gdx/Input$OnscreenKeyboardType;)V
    .locals 0

    return-void
.end method

.method public vibrate(I)V
    .locals 0

    return-void
.end method

.method public vibrate(IIZ)V
    .locals 0

    return-void
.end method

.method public vibrate(IZ)V
    .locals 0

    return-void
.end method

.method public vibrate(Lcom/badlogic/gdx/Input$VibrationType;)V
    .locals 0

    return-void
.end method
