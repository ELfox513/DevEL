.class public Lcom/badlogic/gdx/input/RemoteSender;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/badlogic/gdx/InputProcessor;


# static fields
.field public static final ACCEL:I = 0x6

.field public static final COMPASS:I = 0x7

.field public static final GYRO:I = 0x9

.field public static final KEY_DOWN:I = 0x0

.field public static final KEY_TYPED:I = 0x2

.field public static final KEY_UP:I = 0x1

.field public static final SIZE:I = 0x8

.field public static final TOUCH_DOWN:I = 0x3

.field public static final TOUCH_DRAGGED:I = 0x5

.field public static final TOUCH_UP:I = 0x4


# instance fields
.field public a:Ljava/io/DataOutputStream;

.field public b:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->b:Z

    :try_start_0
    new-instance v0, Ljava/net/Socket;

    invoke-direct {v0, p1, p2}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    const/16 v2, 0xbb8

    invoke-virtual {v0, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    sget-object v3, Lcom/badlogic/gdx/Input$Peripheral;->MultitouchScreen:Lcom/badlogic/gdx/Input$Peripheral;

    invoke-interface {v0, v3}, Lcom/badlogic/gdx/Input;->isPeripheralAvailable(Lcom/badlogic/gdx/Input$Peripheral;)Z

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iput-boolean v1, p0, Lcom/badlogic/gdx/input/RemoteSender;->b:Z

    sget-object v0, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v0, p0}, Lcom/badlogic/gdx/Input;->setInputProcessor(Lcom/badlogic/gdx/InputProcessor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    sget-object v0, Lcom/badlogic/gdx/Gdx;->app:Lcom/badlogic/gdx/Application;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RemoteSender"

    invoke-interface {v0, p2, p1}, Lcom/badlogic/gdx/Application;->log(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->b:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public keyDown(I)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    monitor-enter p0

    :try_start_2
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/RemoteSender;->b:Z

    monitor-exit p0

    :goto_0
    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public keyTyped(C)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeChar(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    monitor-enter p0

    :try_start_2
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/RemoteSender;->b:Z

    monitor-exit p0

    :goto_0
    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public keyUp(I)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    monitor-enter p0

    :try_start_2
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/RemoteSender;->b:Z

    monitor-exit p0

    :goto_0
    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public mouseMoved(II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public scrolled(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public sendUpdate()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->b:Z

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getAccelerometerX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getAccelerometerY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getAccelerometerZ()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getAzimuth()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getPitch()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getRoll()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->graphics:Lcom/badlogic/gdx/Graphics;

    invoke-interface {v1}, Lcom/badlogic/gdx/Graphics;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getGyroscopeX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getGyroscopeY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    sget-object v1, Lcom/badlogic/gdx/Gdx;->input:Lcom/badlogic/gdx/Input;

    invoke-interface {v1}, Lcom/badlogic/gdx/Input;->getGyroscopeZ()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->b:Z

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public touchCancelled(IIII)Z
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/badlogic/gdx/input/RemoteSender;->touchUp(IIII)Z

    move-result p1

    return p1
.end method

.method public touchDown(IIII)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean p4, p0, Lcom/badlogic/gdx/input/RemoteSender;->b:Z

    const/4 v0, 0x0

    if-nez p4, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object p4, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x3

    invoke-virtual {p4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p4, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p4, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    monitor-enter p0

    :try_start_2
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->b:Z

    monitor-exit p0

    :goto_0
    return v0

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public touchDragged(III)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    monitor-enter p0

    :try_start_2
    iput-boolean v1, p0, Lcom/badlogic/gdx/input/RemoteSender;->b:Z

    monitor-exit p0

    :goto_0
    return v1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method public touchUp(IIII)Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean p4, p0, Lcom/badlogic/gdx/input/RemoteSender;->b:Z

    const/4 v0, 0x0

    if-nez p4, :cond_0

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object p4, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    const/4 v1, 0x4

    invoke-virtual {p4, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p4, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p4, p1}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object p1, p0, Lcom/badlogic/gdx/input/RemoteSender;->a:Ljava/io/DataOutputStream;

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    monitor-enter p0

    :try_start_2
    iput-boolean v0, p0, Lcom/badlogic/gdx/input/RemoteSender;->b:Z

    monitor-exit p0

    :goto_0
    return v0

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :catchall_2
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method
