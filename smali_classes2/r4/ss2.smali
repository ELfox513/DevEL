.class public final synthetic Lr4/ss2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final a:Ljava/util/concurrent/Callable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/ss2;

    invoke-direct {v0}, Lr4/ss2;-><init>()V

    sput-object v0, Lr4/ss2;->a:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
