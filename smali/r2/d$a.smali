.class public final Lr2/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr2/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lr2/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr2/d;

    invoke-direct {v0}, Lr2/d;-><init>()V

    sput-object v0, Lr2/d$a;->a:Lr2/d;

    return-void
.end method

.method public static synthetic a()Lr2/d;
    .locals 1

    sget-object v0, Lr2/d$a;->a:Lr2/d;

    return-object v0
.end method
