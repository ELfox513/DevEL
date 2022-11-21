.class public final Lr4/qm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lr4/rm;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lr4/rm;

    invoke-direct {v0}, Lr4/rm;-><init>()V

    sput-object v0, Lr4/qm;->a:Lr4/rm;

    return-void
.end method

.method public static synthetic a()Lr4/rm;
    .locals 1

    sget-object v0, Lr4/qm;->a:Lr4/rm;

    return-object v0
.end method
