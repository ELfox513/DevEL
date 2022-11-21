.class public final synthetic Lr4/zx1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr4/e73;


# static fields
.field public static final a:Lr4/e73;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/zx1;

    invoke-direct {v0}, Lr4/zx1;-><init>()V

    sput-object v0, Lr4/zx1;->a:Lr4/e73;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Lr4/h83;
    .locals 0

    check-cast p1, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lr4/y73;->c(Ljava/lang/Throwable;)Lr4/h83;

    move-result-object p1

    return-object p1
.end method
