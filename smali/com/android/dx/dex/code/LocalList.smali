.class public final Lcom/android/dx/dex/code/LocalList;
.super Lb2/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dx/dex/code/LocalList$MakeState;,
        Lcom/android/dx/dex/code/LocalList$Entry;,
        Lcom/android/dx/dex/code/LocalList$Disposition;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field public static final EMPTY:Lcom/android/dx/dex/code/LocalList;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/dx/dex/code/LocalList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/dx/dex/code/LocalList;-><init>(I)V

    sput-object v0, Lcom/android/dx/dex/code/LocalList;->EMPTY:Lcom/android/dx/dex/code/LocalList;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lb2/f;-><init>(I)V

    return-void
.end method

.method private static debugVerify(Lcom/android/dx/dex/code/LocalList;)V
    .locals 5

    :try_start_0
    invoke-static {p0}, Lcom/android/dx/dex/code/LocalList;->debugVerify0(Lcom/android/dx/dex/code/LocalList;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private static debugVerify0(Lcom/android/dx/dex/code/LocalList;)V
    .locals 12

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    const/high16 v1, 0x10000

    new-array v1, v1, [Lcom/android/dx/dex/code/LocalList$Entry;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_b

    invoke-virtual {p0, v3}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegister()I

    move-result v5

    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v6

    if-eqz v6, :cond_2

    aget-object v6, v1, v5

    if-eqz v6, :cond_1

    invoke-virtual {v4, v6}, Lcom/android/dx/dex/code/LocalList$Entry;->matches(Lcom/android/dx/dex/code/LocalList$Entry;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "redundant start at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; had "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_1
    aput-object v4, v1, v5

    goto/16 :goto_6

    :cond_2
    aget-object v6, v1, v5

    const-string v7, "redundant end at "

    if-eqz v6, :cond_a

    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v6

    add-int/lit8 v8, v3, 0x1

    const/4 v9, 0x0

    :goto_2
    if-ge v8, v0, :cond_7

    invoke-virtual {p0, v8}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v11

    if-eq v11, v6, :cond_3

    goto :goto_4

    :cond_3
    invoke-virtual {v10}, Lcom/android/dx/dex/code/LocalList$Entry;->getRegisterSpec()Lw1/q;

    move-result-object v11

    invoke-virtual {v11}, Lw1/q;->B()I

    move-result v11

    if-ne v11, v5, :cond_6

    invoke-virtual {v10}, Lcom/android/dx/dex/code/LocalList$Entry;->isStart()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/android/dx/dex/code/LocalList$Disposition;

    move-result-object v9

    sget-object v10, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    if-ne v9, v10, :cond_4

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "improperly marked end at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    if-nez v9, :cond_9

    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalList$Entry;->getDisposition()Lcom/android/dx/dex/code/LocalList$Disposition;

    move-result-object v4

    sget-object v7, Lcom/android/dx/dex/code/LocalList$Disposition;->END_REPLACED:Lcom/android/dx/dex/code/LocalList$Disposition;

    if-eq v4, v7, :cond_8

    goto :goto_5

    :cond_8
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "improper end replacement claim at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    :goto_5
    const/4 v4, 0x0

    aput-object v4, v1, v5

    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalList$Entry;->getAddress()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    return-void
.end method

.method public static make(Lcom/android/dx/dex/code/DalvInsnList;)Lcom/android/dx/dex/code/LocalList;
    .locals 5

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    new-instance v1, Lcom/android/dx/dex/code/LocalList$MakeState;

    invoke-direct {v1, v0}, Lcom/android/dx/dex/code/LocalList$MakeState;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/dx/dex/code/DalvInsnList;->get(I)Lcom/android/dx/dex/code/DalvInsn;

    move-result-object v3

    instance-of v4, v3, Lcom/android/dx/dex/code/LocalSnapshot;

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Lcom/android/dx/dex/code/LocalSnapshot;

    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalSnapshot;->getLocals()Lw1/s;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lcom/android/dx/dex/code/LocalList$MakeState;->snapshot(ILw1/s;)V

    goto :goto_1

    :cond_0
    instance-of v4, v3, Lcom/android/dx/dex/code/LocalStart;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Lcom/android/dx/dex/code/LocalStart;

    invoke-virtual {v4}, Lcom/android/dx/dex/code/LocalStart;->getLocal()Lw1/q;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/dx/dex/code/DalvInsn;->getAddress()I

    move-result v3

    invoke-virtual {v1, v3, v4}, Lcom/android/dx/dex/code/LocalList$MakeState;->startLocal(ILw1/q;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcom/android/dx/dex/code/LocalList$MakeState;->finish()Lcom/android/dx/dex/code/LocalList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public debugPrint(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lb2/f;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/LocalList;->get(I)Lcom/android/dx/dex/code/LocalList$Entry;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)Lcom/android/dx/dex/code/LocalList$Entry;
    .locals 0

    invoke-virtual {p0, p1}, Lb2/f;->get0(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/dx/dex/code/LocalList$Entry;

    return-object p1
.end method

.method public set(ILcom/android/dx/dex/code/LocalList$Entry;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lb2/f;->set0(ILjava/lang/Object;)V

    return-void
.end method
