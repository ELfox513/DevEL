.class public final enum Lk1/o$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk1/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lk1/o$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lk1/o$b;

.field public static final enum d:Lk1/o$b;

.field public static final enum k:Lk1/o$b;

.field public static final enum p:Lk1/o$b;

.field public static final enum q:Lk1/o$b;

.field public static final enum r:Lk1/o$b;

.field public static final enum s:Lk1/o$b;

.field public static final enum t:Lk1/o$b;

.field public static final enum u:Lk1/o$b;

.field public static final synthetic v:[Lk1/o$b;


# instance fields
.field public final a:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    new-instance v0, Lk1/o$b;

    const-string v1, "METHOD_HANDLE_TYPE_STATIC_PUT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lk1/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lk1/o$b;->b:Lk1/o$b;

    new-instance v1, Lk1/o$b;

    const-string v3, "METHOD_HANDLE_TYPE_STATIC_GET"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lk1/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lk1/o$b;->d:Lk1/o$b;

    new-instance v3, Lk1/o$b;

    const-string v5, "METHOD_HANDLE_TYPE_INSTANCE_PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lk1/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lk1/o$b;->k:Lk1/o$b;

    new-instance v5, Lk1/o$b;

    const-string v7, "METHOD_HANDLE_TYPE_INSTANCE_GET"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lk1/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lk1/o$b;->p:Lk1/o$b;

    new-instance v7, Lk1/o$b;

    const-string v9, "METHOD_HANDLE_TYPE_INVOKE_STATIC"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lk1/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lk1/o$b;->q:Lk1/o$b;

    new-instance v9, Lk1/o$b;

    const-string v11, "METHOD_HANDLE_TYPE_INVOKE_INSTANCE"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lk1/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lk1/o$b;->r:Lk1/o$b;

    new-instance v11, Lk1/o$b;

    const-string v13, "METHOD_HANDLE_TYPE_INVOKE_DIRECT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v14}, Lk1/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lk1/o$b;->s:Lk1/o$b;

    new-instance v13, Lk1/o$b;

    const-string v15, "METHOD_HANDLE_TYPE_INVOKE_CONSTRUCTOR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v14}, Lk1/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lk1/o$b;->t:Lk1/o$b;

    new-instance v15, Lk1/o$b;

    const-string v14, "METHOD_HANDLE_TYPE_INVOKE_INTERFACE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v12}, Lk1/o$b;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lk1/o$b;->u:Lk1/o$b;

    const/16 v14, 0x9

    new-array v14, v14, [Lk1/o$b;

    aput-object v0, v14, v2

    aput-object v1, v14, v4

    aput-object v3, v14, v6

    aput-object v5, v14, v8

    aput-object v7, v14, v10

    const/4 v0, 0x5

    aput-object v9, v14, v0

    const/4 v0, 0x6

    aput-object v11, v14, v0

    const/4 v0, 0x7

    aput-object v13, v14, v0

    aput-object v15, v14, v12

    sput-object v14, Lk1/o$b;->v:[Lk1/o$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lk1/o$b;->a:I

    return-void
.end method

.method public static synthetic c(Lk1/o$b;)I
    .locals 0

    iget p0, p0, Lk1/o$b;->a:I

    return p0
.end method

.method public static d(I)Lk1/o$b;
    .locals 5

    invoke-static {}, Lk1/o$b;->values()[Lk1/o$b;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lk1/o$b;->a:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lk1/o$b;
    .locals 1

    const-class v0, Lk1/o$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lk1/o$b;

    return-object p0
.end method

.method public static values()[Lk1/o$b;
    .locals 1

    sget-object v0, Lk1/o$b;->v:[Lk1/o$b;

    invoke-virtual {v0}, [Lk1/o$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lk1/o$b;

    return-object v0
.end method


# virtual methods
.method public f()Z
    .locals 3

    sget-object v0, Lk1/o$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method
