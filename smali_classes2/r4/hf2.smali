.class public final synthetic Lr4/hf2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final a:Ljava/util/concurrent/Callable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/hf2;

    invoke-direct {v0}, Lr4/hf2;-><init>()V

    sput-object v0, Lr4/hf2;->a:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 2

    new-instance v0, Lr4/mf2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lr4/mf2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
