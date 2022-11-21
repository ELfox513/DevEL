.class public final synthetic Lr4/bd2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final a:Ljava/util/concurrent/Callable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/bd2;

    invoke-direct {v0}, Lr4/bd2;-><init>()V

    sput-object v0, Lr4/bd2;->a:Ljava/util/concurrent/Callable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lr4/ed2;

    invoke-static {}, Lz2/t;->n()Lb3/c0;

    move-result-object v1

    invoke-virtual {v1}, Lb3/c0;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lz2/t;->n()Lb3/c0;

    move-result-object v2

    invoke-virtual {v2}, Lb3/c0;->m()Z

    move-result v2

    invoke-direct {v0, v1, v2}, Lr4/ed2;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method
