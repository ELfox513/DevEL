.class Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;
.super Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/dex/code/RopTranslator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalVariableAwareTranslationVisitor"
.end annotation


# instance fields
.field public final synthetic b:Lcom/android/dx/dex/code/RopTranslator;

.field private final locals:Lw1/m;


# direct methods
.method public constructor <init>(Lcom/android/dx/dex/code/RopTranslator;Lcom/android/dx/dex/code/OutputCollector;Lw1/m;)V
    .locals 0

    iput-object p1, p0, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->b:Lcom/android/dx/dex/code/RopTranslator;

    invoke-direct {p0, p1, p2}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;-><init>(Lcom/android/dx/dex/code/RopTranslator;Lcom/android/dx/dex/code/OutputCollector;)V

    iput-object p3, p0, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->locals:Lw1/m;

    return-void
.end method


# virtual methods
.method public addIntroductionIfNecessary(Lw1/h;)V
    .locals 2

    iget-object v0, p0, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->locals:Lw1/m;

    invoke-virtual {v0, p1}, Lw1/m;->z(Lw1/h;)Lw1/q;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/dx/dex/code/LocalStart;

    invoke-virtual {p1}, Lw1/h;->j()Lw1/w;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/android/dx/dex/code/LocalStart;-><init>(Lw1/w;Lw1/q;)V

    invoke-virtual {p0, v1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->addOutput(Lcom/android/dx/dex/code/DalvInsn;)V

    :cond_0
    return-void
.end method

.method public visitPlainCstInsn(Lw1/n;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->visitPlainCstInsn(Lw1/n;)V

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->addIntroductionIfNecessary(Lw1/h;)V

    return-void
.end method

.method public visitPlainInsn(Lw1/o;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->visitPlainInsn(Lw1/o;)V

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->addIntroductionIfNecessary(Lw1/h;)V

    return-void
.end method

.method public visitSwitchInsn(Lw1/x;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->visitSwitchInsn(Lw1/x;)V

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->addIntroductionIfNecessary(Lw1/h;)V

    return-void
.end method

.method public visitThrowingCstInsn(Lw1/y;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->visitThrowingCstInsn(Lw1/y;)V

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->addIntroductionIfNecessary(Lw1/h;)V

    return-void
.end method

.method public visitThrowingInsn(Lw1/z;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$TranslationVisitor;->visitThrowingInsn(Lw1/z;)V

    invoke-virtual {p0, p1}, Lcom/android/dx/dex/code/RopTranslator$LocalVariableAwareTranslationVisitor;->addIntroductionIfNecessary(Lw1/h;)V

    return-void
.end method
