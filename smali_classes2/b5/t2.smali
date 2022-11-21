.class public final synthetic Lb5/t2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic a:Lb5/t2;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lb5/t2;

    invoke-direct {v0}, Lb5/t2;-><init>()V

    sput-object v0, Lb5/t2;->a:Lb5/t2;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lb5/zf;

    invoke-direct {v0}, Lb5/zf;-><init>()V

    return-object v0
.end method
